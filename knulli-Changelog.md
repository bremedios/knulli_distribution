# knulli - firefly - alpha (20241111)

## ChangeLog

### ADDED ###
- Device support
    - support for RG40XX-H, RG40XX-V, RG CubeXX
    - preliminary support for the TrimUI Brick
    - initial work for the Miyoo A30 (still WIP, not working)
- OS features
    - gammas fix for joystick cardinal snapping
    - battery saver mode. (under system settings -> power management)
    - HDMI output modes for 480p, 720p, and 1080p.
    - Bluetooth support for the TSP
    - lid shutdown service for RG35XX-SP to change lid closed behavior to shutdown
    - RGB LEDs support for RG40XX-H/V and RG CubeXX
        - RGB Settings GUI in Tools section
        - RGB LEDs indicating battery status (low, very low, charging)
        - RGB LEDs play rainbow animation when RetroAchievements are earned
        - Brightness of LEDs lowers/raises with screen brightness
    - new default background music for EmulationStation
    - stereo check audio file. call via "batocera-audio test"
    - Romanian translation (SilverGreen93)
    - squashfs support MSU-MD
- Emulation features
    - EmulationStation setting for RetroArch integer overscale
    - EmulationStation settings for Lexaloffle Pico-8
    - EmulationStation setting for Drastic image scaling: bilinear(smooth) and nearest-neighbor (sharp)
    - EmulationStation settings for RetroArch emulators to customize hotkeys
    - EmulationStation setting for RetroArch to change fast-forward hold/toggle
    - EmulationStation setting for DSP audio in Flycast/FlycastVL(default is off). Copied es settings from Flycast to FlycastVL.
    - Support for multi-resolution bezels
        - including new bezel set default-knulli with bezels for 4:3 (internal LCD) and 16:9 displays (HDMI)
    - Drastic-Steward emulator. (Note that hotkeys and inputs differ from Drastic!)

### FIXED ###
- directional inputs sometimes getting stuck in official pico8
- inconsistent IP address when booting/enabling Wi-Fi due to multiple wlans present. Now always enables first wlan found and disables any others.
- issue with Wi-Fi not connecting at boot (again). WPA3 still doesn't work
- issue with Wi-Fi not working with Wi-Fi dongles on affected devices
- bug in S29namebluetooth that resulted in duplicate lines
- reversed stereo audio channels for the RG40XX-H
- issue with audio switching before es reloads when switching between internal LCD and HDMI out
- updated/fixed some issues with handheld tate mode
- on RG35XX-SP if lid is closed and wakes up from suspend will auto-suspend
- maximum audio volume for the TSP
- allow users to add their own RetroAchievements Web API Key to access their RetroAchievement summary in EmulationStation (resolves Error 419)

### CHANGED / IMPROVED
- OS features
    - changed default cpu governor to interactive
    - updated EmulationStation to the latest version, it's now maintained as separate fork
    - default EmulationStation screensaver is now slideshow
    - volume/brightness can be adjusted by holding down inputs
    - updated powermode/battery mode scripts
    - updated power-button script for suspend and shutdown with optimized event detection, eliminating the need for excessive loops and checks
    - brightness has a new floor which allows for very low brightness
    - disabled Wi-Fi background scanning for better battery life
    - added check so emulation station can't have more than one instance running
    - improvements to batocera-resolution
    - improvements to batocera-audio
    - updated SDL2 patches and version to 2.30
    - consolidated H700 overlay and patches for all H700 boards
    - updated all DTBs for all the H700 boards so now each board has a unique model identifier
    - updated DTBs to include unique controller identifiers for all boards
    - added board checks for many scripts
    - removed some unnecessary init and daemon scripts
- Emulation features
    - updated Lexaloffle Pico-8 configgen
    - Drastic inputs have changed to be more universal between all devices(single joystick etc)
    - emulators start with a negative niceness. May provide marginal performance improvements
    - default N64 emulator is now Parallel Libretro core.
    - glN64 now the default gfx plugin for Parallel Libretro core
    - updated Amiberry to 5.7.4
    - updated PPSSPP to 1.18.1
    - handheld tate mode now works with MAME 078 Plus

