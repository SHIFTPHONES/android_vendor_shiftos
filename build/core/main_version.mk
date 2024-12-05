# ShiftOS system version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.shift.sos.version.extra="$(SHIFT_SOS_VERSION_EXTRA)" \
    ro.shift.sos.version.name="$(SHIFT_SOS_VERSION_NAME)" \
    ro.shift.sos.version.number="$(SHIFT_SOS_VERSION_NUMBER)" \

ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.shift.version.display="$(SHIFT_VERSION_DISPLAY)" \

# ShiftOS release type
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.shift.release.type="$(SHIFT_SOFTWARE_BUILD_TYPE)" \
