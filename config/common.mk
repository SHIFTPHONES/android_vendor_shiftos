PRODUCT_BRAND ?= SHIFT

# If not set, default to true
SHIFT_BUILD_WITH_GMS ?= true

# Packages
include vendor/shiftos/config/packages.mk

# Private bits if existing
-include vendor/shiftos/private/common.mk
