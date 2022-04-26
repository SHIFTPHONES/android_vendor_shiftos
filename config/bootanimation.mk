ifeq ($(TARGET_SCREEN_WIDTH),)
    $(warning TARGET_SCREEN_WIDTH is not set, using default value: 1080)
    TARGET_SCREEN_WIDTH := 1080
endif
ifeq ($(TARGET_SCREEN_HEIGHT),)
    $(warning TARGET_SCREEN_HEIGHT is not set, using default value: 1920)
    TARGET_SCREEN_HEIGHT := 1920
endif

# e.g.: 1080x1920
TARGET_SCREEN_RESOLUTION := $(TARGET_SCREEN_WIDTH)x$(TARGET_SCREEN_HEIGHT)

# Boot and Shutdown animations
PRODUCT_BOOTANIMATION := $(wildcard vendor/shiftos/prebuilt/$(TARGET_SCREEN_RESOLUTION)/media/bootanimation.zip)
PRODUCT_SHUTANIMATION := $(wildcard vendor/shiftos/prebuilt/$(TARGET_SCREEN_RESOLUTION)/media/shutdownanimation.zip)

ifneq ($(PRODUCT_BOOTANIMATION),)
  TARGET_BOOTANIMATION := $(PRODUCT_BOOTANIMATION)
endif

ifneq ($(PRODUCT_SHUTANIMATION),)
  TARGET_SHUTANIMATION := $(PRODUCT_SHUTANIMATION)
endif
