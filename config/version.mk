VENDOR_TARGET := $(subst full_,,$(TARGET_PRODUCT))
VENDOR_TARGET := $(subst lineage_,,$(VENDOR_TARGET))

# Work around qssi
ifeq ($(VENDOR_TARGET),qssi)
  VENDOR_TARGET := $(QSSI_BUILD_TARGET_PRODUCT_NAME)
endif

####################################################################################

SHIFT_SOS_VERSION_MAJOR := 5
SHIFT_SOS_VERSION_MINOR := 0
SHIFT_SOS_VERSION_EXTRA :=

ifeq ($(SHIFT_BUILD_WITH_GMS),true)
  SHIFT_SOS_VERSION_EXTRA += G
else
  SHIFT_SOS_VERSION_EXTRA += L
endif
SHIFT_SOS_VERSION_EXTRA := $(strip $(SHIFT_SOS_VERSION_EXTRA))

SHIFT_SOS_VERSION_NUMBER := $(SHIFT_SOS_VERSION_MAJOR).$(SHIFT_SOS_VERSION_MINOR)
SHIFT_SOS_VERSION_NAME   := SOS.$(SHIFT_SOS_VERSION_NUMBER).$(SHIFT_SOS_VERSION_EXTRA)

####################################################################################

# SHIFT 5me
ifeq ($(VENDOR_TARGET),SHIFT5me)
  SHIFT_SOFTWARE_VERSION_BASE := SHIFT5ME.$(SHIFT_SOS_VERSION_NAME)

  VENDOR_DEFAULT_SERIAL := SP0752454246466
endif

# SHIFT 6m
ifeq ($(VENDOR_TARGET),SHIFT6m)
  SHIFT_SOFTWARE_VERSION_BASE := SHIFT6M.$(SHIFT_SOS_VERSION_NAME)

  VENDOR_DEFAULT_SERIAL := SP0752454246465
endif

# SHIFT 6mq (axolotl)
ifeq ($(VENDOR_TARGET),axolotl)
  SHIFT_SOFTWARE_VERSION_BASE := SHIFT6MQ.$(SHIFT_SOS_VERSION_NAME)

  VENDOR_DEFAULT_SERIAL := SP0752454246472
endif

# SHIFT 6mq - ROW (axolotl_row)
ifeq ($(VENDOR_TARGET),axolotl_row)
  SHIFT_SOFTWARE_VERSION_BASE := SHIFT6MQ_ROW.$(SHIFT_SOS_VERSION_NAME)

  VENDOR_DEFAULT_SERIAL := SP0752454246472
endif

####################################################################################

ifeq ($(SHIFT_SOFTWARE_VERSION_BASE),)
  SHIFT_SOFTWARE_VERSION_BASE := $(VENDOR_TARGET).$(SHIFT_SOS_VERSION_NAME)
endif

SHIFT_BUILD_DATE := $(shell date +%Y%m%d)
SHIFT_BUILD_TIMESTAMP := $(shell date +%s)
SHIFT_SOFTWARE_VERSION := $(SHIFT_SOFTWARE_VERSION_BASE).$(SHIFT_BUILD_DATE)

####################################################################################

ifneq ($(SHIFT_BUILD_TYPE),)
  SHIFT_SOFTWARE_BUILD_TYPE := $(SHIFT_BUILD_TYPE)
else
  SHIFT_SOFTWARE_BUILD_TYPE := development
endif

####################################################################################
