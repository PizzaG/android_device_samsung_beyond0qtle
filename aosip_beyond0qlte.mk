# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from r5q device
$(call inherit-product, device/samsung/beyond0qlte/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosip/Android.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosip_beyond0qlte
PRODUCT_DEVICE := beyond0qlte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G970U
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_DEVICE=beyond0qlte \
	TARGET_BOOTLOADER_BOARD_NAME=msmnile \
	PRODUCT_NAME=beyond0qltesq \
	PRIVATE_BUILD_DESC="beyond0qltesq-user 11 RP1A.200720.012 G970USQS4FUA1 release-keys"

BUILD_FINGERPRINT := "samsung/beyond0qltesq/beyond0q:11/RP1A.200720.012/G970USQS4FUA1:user/release-keys"
