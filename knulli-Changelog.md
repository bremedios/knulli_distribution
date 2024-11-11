# knulli - firefly - alpha (20241026)

## ChangeLog

### ADDED ###
- es setting for drastic image scaling. Bilinear(smooth) and nearest-neighbor(sharp).
- es settings for retroarch emulators to customize hotkeys
- battery saver mode. In batocera.conf valid modes for batterysavermode=dim|suspend|shutdown. batterysavertimer=(number in seconds >=60)
- automatically switching between bezels/overlays for 4:3(internal lcd) and 16:9 displays(hdmi)
- drastic-steward emulator. Note that hotkeys and inputs differ from drastic
- es setting for dsp audio in flycast/flycastvl(default is off). Copied es settings from flycast to flycastvl
- hdmi output modes for 480p, 720p, and 1080p.
- es setting for retroarch to change fast-forward hold/toggle
- rgb joystick settings for rg40xx devices
- new default es music
- stereo check audio file. call via "batocera-audio test"
- gammas fix for joystick cardinal snapping
- lid shutdown service for rg35xx-sp to change lid closed behavior to shutdown
- Romanian translation (SilverGreen93)
- squashfs support MSU-MD
- bluetooth support for the TSP
- support for RG40XX-H, RG40XX-V, RG CubeXX
- preliminary support for the TrimUI Brick

### FIXED ###
- inconsistent ip address when booting/enabling wifi due to multiple wlans present. Now always enables first wlan found and disables any others.
- issue with wifi not connecting at boot (again). wpa3 still doesn't work
- issue with wifi not working with wifi dongles on affected devices
- bug in S29namebluetooth that resulted in duplicate lines
- reversed stereo audio channels for the rg40xx-h
- issue with audio switching before es reloads when switching between internal lcd and hdmi out
- updated/fixed some issues with handheld tate mode
- on rg35xx-sp if lid is closed and wakes up from suspend will auto-suspend
- maximum audio volume for the TSP

### CHANGED / IMPROVED
- removed some unnecessary init and daemon scripts
- default emulation station screensaver is now slideshow
- updated powermode/battery mode scripts
- handheld tate mode now works with mame078plus
- volume/brightness can be adjusted by holding down inputs.
- drastic inputs have changed to be more universal between all devices(single joystick etc)
- disabled wifi background scanning for better battery life
- added board checks for many scripts
- emulators start with a negative niceness. May provide marginal performance improvements
- added check so emulation station can't have more than one instance running
- default n64 emulator is now parallel libretro core.
- gln64 now the default gfx plugin for paralell libretro core
- improvements to batocera-resolution
- brightness has a new floor which allows for very low brightness
- for the rg40xx devices with rgb, rgb brightness now follows screen brightness
- imporovements to batocera-audio
- updated SDL2 patches and version to 2.30
- consolidated H700 overlay and patches for all H700 boards
- updated all DTBs for all the h700 boards so now each board has a unique model identifier
- updated DTBs to include unique controller identifiers for all boards
- updated amiberry to 5.7.4
- initial work for the Miyoo A30 (stiil WIP, not working)
- updated EmulationStation to the latest version, it's not maintained as separate fork

