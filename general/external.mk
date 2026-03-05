export OPENIPC_SOC_VENDOR := $(call qstrip,$(BR2_OPENIPC_SOC_VENDOR))
export OPENIPC_SOC_MODEL := $(call qstrip,$(BR2_OPENIPC_SOC_MODEL))
export OPENIPC_SOC_FAMILY := $(call qstrip,$(BR2_OPENIPC_SOC_FAMILY))
export OPENIPC_SNS_MODEL := $(call qstrip,$(BR2_OPENIPC_SNS_MODEL))
export OPENIPC_VARIANT := $(call qstrip,$(BR2_OPENIPC_VARIANT))
export OPENIPC_MAJESTIC := $(call qstrip,$(BR2_OPENIPC_MAJESTIC))
export WGET := wget --show-progress --passive-ftp -nd -t5 -T10

EXTERNAL_VENDOR := $(BR2_EXTERNAL)/../br-ext-chip-$(OPENIPC_SOC_VENDOR)
OPENIPC_KERNEL := $(OPENIPC_SOC_VENDOR)-$(OPENIPC_SOC_FAMILY)
OPENIPC_TOOLCHAIN := toolchain/toolchain.$(OPENIPC_KERNEL)

OPENIPC_REPO_OWNER := $(shell git remote get-url origin 2>/dev/null | awk -F'[/:]' '{print $$(NF-1)}' || echo "OpenIPC")
OPENIPC_TOOLCHAIN_OWNER := $(if $(shell curl -s -I "https://github.com/$(OPENIPC_REPO_OWNER)/firmware/releases/download/$(OPENIPC_TOOLCHAIN).tgz" | grep 404),OpenIPC,$(OPENIPC_REPO_OWNER))
OPENIPC_KERNEL_OWNER := $(if $(shell curl -s -I "https://github.com/$(OPENIPC_REPO_OWNER)/openipc-linux/tree/$(OPENIPC_KERNEL)" | grep 404),OpenIPC,$(OPENIPC_REPO_OWNER))

include $(sort $(wildcard $(BR2_EXTERNAL)/package/*/*.mk))
include $(sort $(wildcard $(BR2_EXTERNAL)/package/legacy/*/*.mk))
