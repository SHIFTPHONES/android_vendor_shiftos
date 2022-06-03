# Inherit from ShiftOS common_overlays, which needs to happen
# before including any other vendor overlays to allow overriding them.
$(call inherit-product, vendor/shiftos/config/common_overlays.mk)

# Inherit from Lineage vendor
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ShiftOS common
$(call inherit-product, vendor/shiftos/config/common.mk)
