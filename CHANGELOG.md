## [Version 3.0] - 2024-02-17

## Added
- "Addon" packs are now a thing!  Use an addon pack on top of a normal pack to add sounds from multiple packs together! (#3)
- 173 unique sounds from clips collected over an 8 month time period between June 2023 and Valentine's Day 2024.  (#5, #6, #10, #11, #12, #15, #16, #17, #18, #19, #20, #21, #22, #23, #25, #26)
    - Adult edition (32 sounds):
        - 2 villager celebrate
        - 6 villager death
        - 4 villager hurt
        - 5 villager no
        - 13 villager trade
        - 1 villager yes
        - 1 witch celebrate
    - Loaded edition (125 sounds):
        - 3 beacon sounds
        - 1 allay ambient
        - 1 allay item_thrown
        - 1 cow ambient
        - 2 slime attack
        - 5 slime jump
        - 5 slime jump_small
        - 3 villager ambient
        - 12 villager celebrate
        - 4 villager death
        - 24 villager hurt
        - 16 villager no
        - 17 villager trade
        - 23 villager yes
        - 6 witch ambient
        - 2 witch celebrate
        - 1 music disc
    - UwU edition (15 sounds):
        - 7 villager ambient
        - 1 villager death
        - 2 villager hurt
        - 1 villager trade
        - 2 villager yes
        - 2 witch ambient

## Fixed
- Three villager trade sounds in the Adult edition were .flac files, which aren't recognized by Minecraft (#9)
- Reduced the duration of an overly-long villager trade sound.  The same villager could start saying something else before their previous statement ended. (#8)

## Removed
- 19 witch sounds from Adult edition, because they were duplicates of sounds in the Loaded pack.  Now that you can layer multiple packs together, this would have caused problems.  Adult edition still has a unique witch death sound. (#34)

## Changed
#### User-facing changes
- Slightly reduced the volume of the villager ambient sounds, so that they become more "background" and less "headache-inducing" (#27)
- Implemented Mojang's new "supported_formats" field in pack.mcmeta, so now when a new version of Minecraft comes out, the pack won't tell you it's "incompatible," because it probably isn't.  It also shows compatibility back to version 1.20. (#29)
- Remastered a villager trade sound in the adult edition to improve its quality. (#31)
#### Infrastructure changes
- There is now a sha256 hash posted with every release.  Use it to verify that your download came from me.  See [here](https://windowsreport.com/checksum-on-windows/) for steps to use these files.
- Adjusted folder structure to match sound event name - I have an automated tool that speeds-up the incorporation of new sounds, but it requires the folder structure to exactly match the sound event names. (#28)

## [Loaded edition v2.1] - 2023-10-30

### Changed
- Moved "four big guys" sound to the trade menu to make it less conspicuous.

## [Version 2.0] - 2023-10-29

### Fixed
- An issue in my file names prevented the Loaded edition from working in 1.20.1.

### Changed
- Re-arranged the internal structure of all editions to use a custom namespace instead of shoehorning my .ogg files into the minecraft namespace.  Now, the minecraft namespace has nothing in it but the sounds.json file.

## [Version 1.0] - 2023-07-21

### Added
- This is the first release of separate "editions"
    - Adult edition (not available on Modrinth due to their terms of service)
    - Loaded edition
    - uwu edition

Please check the README for more info on what these editions contain.

## [Loaded edition beta 0.2] - 2023-06-28

### Added
Added a ton more sounds, including WAR CALL!!!

This release has 420 sounds:

Villager: 35 ambient, 42 celebrate, 40 death, 109 hurt, 42 no, 68 trade and 67 yes
Witch: 13 ambient, 3 celebrate
1 Music Disc

## [Loaded edition beta 0.1] - 2023-06-18

### Added
I was going to wait until the clips that I took from my last round of snipping were fully added, but there are over 400 more of them, and I'd kind of also like to get some feedback on what's already been added, so here's the first beta version of the new edition!

## [Original edition version 3.0] - 2023-06-12
This release was never published on GitHub, for some reason

### Fixed
- All sounds are now distance-dependent and directional.

## [Initial Github Version (v2.2)] - 2023-06-09
This was the first actual "release" I had made on GitHub

### Changed
- This version is at half original volume, to better match the villager sound level in Minecraft.
