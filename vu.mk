# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit Vanilla Unicorn common bits
$(call inherit-product, vendor/vanilla/configs/common_full_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/vanilla/configs/gsm.mk)

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/vanilla/overlay/lge/mako

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mako
PRODUCT_NAME := vu_mako
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.4.2/KOT49H/937116:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.4.2 KOT49H 937116 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch

# Boot animation
PRODUCT_COPY_FILES += \
vendor/vanilla/prebuilt/bootanimation/bootanimation_720_720.zip:system/media/bootanimation-alt.zip
