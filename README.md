# TWRP Device Tree for LEMX Smartwatch

TWRP device tree for the LEMX Android smartwatch (MT6739).

## Device Specifications

| Feature | Specification |
|---------|---------------|
| **SoC** | MediaTek MT6739 |
| **CPU** | Quad-core Cortex-A53 |
| **Architecture** | ARM 32-bit (armeabi-v7a) |
| **Display** | 640x640 Round AMOLED |
| **Display Driver** | Renesas R63353 (BOE LTPS) |
| **Touch Panel** | ITE IT7260 |
| **Android Version** | 7.1.1 (Nougat) |
| **Kernel** | 4.4.22 |

## Features

- [x] ADB in recovery
- [x] MTP support
- [x] Round screen support (watch_mdpi theme)
- [x] Touchscreen (tested, fully functional)
- [x] Backlight control
- [x] Decryption (device not encrypted - optional encryption)
- [x] USB OTG (kernel supports OTG, needs physical adapter to test)

## Building

### Prerequisites

Sync TWRP minimal manifest:

```bash
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
repo sync -j$(nproc)
```

### Clone Device Tree

```bash
git clone https://github.com/none24smu/android_device_LEMX_LEMX.git device/LEMX/LEMX
```

### Build

```bash
source build/envsetup.sh
lunch omni_LEMX-eng
mka recoveryimage
```

## Flashing

This device requires MTK download mode for flashing (no fastboot support).

### Using mtkclient

```bash
# Install mtkclient
git clone https://github.com/bkerler/mtkclient
cd mtkclient
pip3 install -r requirements.txt

# Enter download mode: Power off → Hold Power → Connect USB

# Flash to boot partition (recommended for testing)
python3 mtk.py w boot twrp-LEMX.img

# Flash to recovery partition
python3 mtk.py w recovery twrp-LEMX.img
```

### Notes

- **No volume buttons** - This is a smartwatch with only a power button
- **Download mode**: Power off device, hold POWER, connect USB while holding
- Flash to **boot partition** works reliably
- Recovery partition may have signature verification issues

## Credits

- [TWRP](https://twrp.me)
- [mtkclient](https://github.com/bkerler/mtkclient) by @bkerler
- [twrpdtgen](https://github.com/twrpdtgen/twrpdtgen)

## License

```
Copyright (C) 2024 The Android Open Source Project
Copyright (C) 2024 TeamWin Recovery Project

SPDX-License-Identifier: Apache-2.0
```

