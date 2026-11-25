#!/usr/bin/env python3
# Remakes files/UbuntuMono-Regular.ttf ("OpenIPC Mono") from Iosevka Charon Mono 34.100
# (google/fonts, ofl/iosevkacharonmono), byte for byte, with fontTools 4.61.1:
#
#   curl -Lo IosevkaCharonMono.ttf "https://github.com/google/fonts/raw/8064df88b17c53a56c84330e31566fbb972726cb/ofl/iosevkacharonmono/IosevkaCharonMono-Regular.ttf"
#   python3 make-subset.py IosevkaCharonMono.ttf files/UbuntuMono-Regular.ttf
#
# The file keeps its old name: osd.font in deployed configs, the wiki, msposd
# and divinus all name it. The subset is ASCII, Russian Cyrillic, the degree
# and numero signs; anything outside it renders as a hatched box. Of what
# upstream lacks, U+0182 is drawn as U+0411. The control codes are blank.
# Hinting is dropped. Renamed, as the other faces were; the
# copyright, trademark and licence records stay as upstream has them.
import hashlib
import sys

from fontTools import subset
from fontTools.ttLib import TTFont

VERSION = "0.14"  # MAJESTIC_FONTS_VERSION
UNICODES = "U+0000,U+0008,U+0009,U+000D,U+001D,U+0020-007E,U+00A8,U+00B0," \
           "U+0138,U+0182,U+0401,U+0410-0451,U+2116"
ALIASES = {0x0000: 0x20, 0x0008: 0x20, 0x0009: 0x20, 0x000D: 0x20,
           0x001D: 0x20, 0x0182: 0x0411}
ASCENT, DESCENT = 0.96, 0.23
SHA256 = "ae87c9bc7baae0a18e78cbe498d967865c251cae20fffa0c34e5937ce118f845"

src, dst = sys.argv[1], sys.argv[2]
weight = 400
with open(src, "rb") as f:
    assert hashlib.sha256(f.read()).hexdigest() == SHA256, "not the pinned source"
font = TTFont(src, recalcTimestamp=False)
cmap = font.getBestCmap()
for table in font["cmap"].tables:
    if table.isUnicode():
        for new, old in ALIASES.items():
            if new < 0x20 or new not in table.cmap:
                table.cmap[new] = cmap[old]
wanted = subset.parse_unicodes(UNICODES)
missing = sorted(set(wanted) - set(font.getBestCmap()))
assert not missing, missing

opts = subset.Options()
opts.hinting = False
opts.notdef_outline = True
opts.layout_features = []
opts.layout_closure = False
opts.name_IDs = [0, 5, 7, 13, 14]
opts.drop_tables += ["GDEF", "GPOS", "GSUB", "STAT", "gasp"]
sub = subset.Subsetter(opts)
sub.populate(unicodes=wanted)
sub.subset(font)

assert font["glyf"][".notdef"].numberOfContours, ".notdef is blank"

upem = font["head"].unitsPerEm
asc, desc = round(ASCENT * upem), round(DESCENT * upem)
glyphs = [g for g in
          map(font["glyf"].__getitem__, font.getGlyphOrder())
          if g.numberOfContours]
for g in glyphs:
    g.recalcBounds(font["glyf"])
assert max(g.yMax for g in glyphs) <= asc, "ascent clips"
assert -min(g.yMin for g in glyphs) <= desc, "descent clips"
hhea, os2 = font["hhea"], font["OS/2"]
hhea.ascent, hhea.descent, hhea.lineGap = asc, -desc, 0
os2.sTypoAscender, os2.sTypoDescender, os2.sTypoLineGap = asc, -desc, 0
os2.usWinAscent, os2.usWinDescent = asc, desc
os2.usWeightClass = weight

names = font["name"]
version = "Version " + VERSION
for nid, text in {1: "OpenIPC Mono", 2: "Regular",
                  3: "OpenIPC Mono Regular " + version, 4: "OpenIPC Mono", 5: version,
                  6: "OpenIPCMono-Regular"}.items():
    names.setName(text, nid, 3, 1, 0x409)
cmap = font.getBestCmap()
assert len({font["hmtx"][g][0] for g in cmap.values()}) == 1, "not monospaced"
font.save(dst)
