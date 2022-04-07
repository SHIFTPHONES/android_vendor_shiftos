# ShiftOS system version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.shift.sos.version=$(SHIFT_SOFTWARE_VERSION) \
    ro.shift.sos.version.extra=$(SHIFT_SOS_VERSION_EXTRA) \
    ro.shift.sos.version.name=$(SHIFT_SOS_VERSION_NAME) \
    ro.shift.sos.version.number=$(SHIFT_SOS_VERSION_NUMBER) \

ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.shift.version.base=$(SHIFT_SOFTWARE_VERSION_BASE) \
    ro.shift.version.date=$(SHIFT_BUILD_DATE) \
    ro.shift.version.display=$(SHIFT_SOFTWARE_VERSION) \
    ro.shift.version.timestamp=$(SHIFT_BUILD_TIMESTAMP) \

# ShiftOS release type
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.shift.release.type=$(SHIFT_SOFTWARE_BUILD_TYPE) \
