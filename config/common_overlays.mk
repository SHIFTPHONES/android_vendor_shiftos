#####
#

PRODUCT_PACKAGE_OVERLAYS += vendor/shiftos/overlay/common

# GMS
ifeq ($(WITH_GMS),true)
PRODUCT_PACKAGE_OVERLAYS += vendor/shiftos/overlay/gms
endif
