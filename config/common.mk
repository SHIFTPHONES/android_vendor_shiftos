PRODUCT_BRAND ?= SHIFT

# If not set, default to true
SHIFT_BUILD_WITH_GMS ?= true

# Boot and Shutdown animations
include vendor/shiftos/config/bootanimation.mk

# Packages
include vendor/shiftos/config/packages.mk

# Private bits if existing
-include vendor/shiftos/private/common.mk
