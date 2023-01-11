PRODUCT_BRAND ?= SHIFT

# If not set, default to true
SHIFT_BUILD_WITH_GMS ?= true

# Boot and Shutdown animations
include vendor/shiftos/config/bootanimation.mk

# Packages
include vendor/shiftos/config/packages.mk

# ShiftOS permissions
include vendor/shiftos/config/permissions.mk

# Private bits if existing
-include vendor/shiftos/private/common.mk

# Include ADB keys for debuggable builds
-include vendor/shiftos/security/adb/adb_keys.mk
