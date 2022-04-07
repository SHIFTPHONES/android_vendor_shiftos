#####
# DEXOPT
#

ifeq ($(HOST_OS),linux)
  # Enable dexpreopt to speed boot time on userdebug
  ifeq ($(TARGET_BUILD_VARIANT),userdebug)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
      WITH_DEXPREOPT_BOOT_IMG_ONLY := true                   # For Android O
      WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true # For Android O_MR1
    endif
  endif

  # Enable dexpreopt for everything on user builds
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif

  # Disable dexpreopt for prebuilts
  # DONT_DEXPREOPT_PREBUILTS := true
endif

#
# DEXOPT
#####

#####
# Factory
#

# Set to true if building for factory (non release build)
TARGET_FACTORY_BUILD := false

#
# Factory
#####

#####
# GMS
#

# Set GMS Home
ANDROID_PARTNER_GMS_HOME := vendor/partner_gms

# if WITH_GMS is set, use its value
ifneq ($(WITH_GMS),)
  SHIFT_BUILD_WITH_GMS := $(WITH_GMS)
endif

# if nothing is set for SHIFT_BUILD_WITH_GMS,
# enable it by default
ifeq ($(SHIFT_BUILD_WITH_GMS),)
  SHIFT_BUILD_WITH_GMS := true
endif

ifneq ($(SHIFT_BUILD_WITH_GMS),)
  BUILD_GMS := $(SHIFT_BUILD_WITH_GMS)
endif

# GMS Extras
SHIFT_BUILD_WITH_GMS_EXTRA := false

#
# GMS
#####
