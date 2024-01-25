# FlyingHawkButt Villager Sounds

## What's this all about?
This is a Minecraft resource pack containing villager sounds featuring Twitch variety streamer FlyingHawkButt.

This came about during a live-stream in which Hawkie was bragging that she could sound just like the villagers in Minecraft, and *demanded* that "someone put \[her\] in the \[expletive deleted\] Minecraft game."

So I did.

Ever since then, I've had so much fun putting this together, I can't stop.  As evidence of this, the edition I'm working on now contains witch sounds, a music disc, an end credits speech, and I'm hoping to add pillagers and maybe even *zombie* villagers.

Please send help.  I think I may have lost my marbles.

## Follow FlyingHawkButt
* Catch her live-streams on [Twitch](https://www.twitch.tv/flyinghawkbutt), and tell her Kuo sent you
* View her on-demand videos on [YouTube](https://www.youtube.com/@flyinghawkbutt9630)
* Follow her antics on [Twitter](https://twitter.com/flyinghawkbutt)
* Interact with her and her amazing followers in [The Nest](https://discord.com/invite/THcR8C3BKw)

## How to install
1. In Minecraft's main menu, click "Options"
2. Click "Resource Packs."
3. At the bottom of the screen that appears, click "Open Pack Folder."
4. Drop the zip file into this folder using your file manager and then return to Minecraft.  You should see the pack in the list at the left side of the screen (Available)
5. Click the arrow on the pack to move it to the right side of the screen (Selected)
6. Click "Done" and play the game.

## How to hear all the sounds
Most of the sounds are random in their context, so you may need to try multiple times to hear them all.  Also, the game pitch-shifts many of these sounds for variety, so they can sound kind of different, even if they're not.  Be patient.  The "Editions" section below shows how many of each type of sound to expect.

* Find a village.  Just hanging around the inhabitants, you should hear them make various "ambient" sounds.

* Right-click on a villager with a profession to enter the villager's trading menu.  Do nothing, just wait.  You should hear various "trade" sounds while you are in this menu.

* Try to trade an item that the villager will *not* accept.  You should hear various "no" sounds.  You can also hear these "no" sounds if you try to trade with a villager who has no profession.

* Trade an item that the villager *does* accept.  You should hear various "yes" sounds.

* Take out a sword and attack the villager.  You should hear several "hurt" sounds.  I wouldn't recommend doing this in survival mode, as the village's Iron Golem will want to have words with you.  FlyingHawkButt herself F&@%ed-around and found out the first time she tried this pack.

* When the villager finally dies, you should hear one or more (depending on edition) spectacular "death" sound(s).

* To hear the "celebrate" sounds, trigger and defeat a raid.  When the villagers are outside shooting off fireworks, they will make special sounds.

* To hear witch "ambient" sounds, just hang around a few witches.  Watch out for flying glass bottles with suspicious liquids in them.

* To hear witch "celebrate" sounds, the pillagers need to win the raid.

* To hear "Hawkie covers a song poorly," obtain Disc 11 and play it in a jukebox.  Note: there is currently a bug in Minecraft that cuts off a custom music disc at the length of the vanilla version due to the new way in which jukeboxes interact with hoppers.  Please [vote for it](https://bugs.mojang.com/browse/MC-260346).

* To hear the end credits speech, defeat the ender dragon (or you could go to the options menu and click "Credits & Attribution" and then "Credits," but what fun is that?)  Make sure you have "Music" turned up on the "Music & Sound Options" screen.

## Editions
### Original
This was the original, built quickly based on Hawkie's joking attempt to imitate the villager sounds on her live-stream.  She had no idea at the time that someone would take her seriously.  It came together just in time for a special live-stream event in which FlyingHawkButt joined the rest of [CarlCrafts](https://www.twitch.tv/carlcrafts)' mod team in their attempt to defeat the Ender Dragon.  The sheer hilarity that ensued was quite the experience.

#### This edition has 17 sounds:
* villagers: 3 ambient, 1 death, 4 hurt, 3 no, 3 trade, 3 yes

I was not aware that "celebrate" sounds were different from "yes" sounds at this time, because the vanilla game has no special celebration sounds.  They simply reuse the "yes" sounds for this.  All my other editions separate these, so "yes" and "celebrate" are two different concepts.  This edition will stay the way it is just for nostalgia.

### UwU
This edition aims to be as adorable as possible, with giggles and laughter and benevolent good vibes, because Hawkie is absolutely adorable in every way.

#### This edition currently has 133 sounds
* Villagers: 30 ambient, 13 celebrate, 11 death, 24 hurt, 4 no, 17 trade, 13 yes
* Witches: 12 ambient, 8 celebrate
* I did not include the music disc or the End Credits speech in this edition

### Adult
Whenever possible in this edition, the sound event will be profane.  She is Australian, after-all...

#### This edition currently has 114 sounds
* Villagers: 8 ambient (most of these are laughs, because there was very little other content), 21 celebrate, 20 death, 12 hurt, 9 no, 20 trade, 2 yes
* Witch sounds should be identical between loaded and adult, with the exception of a single death sound that contains profanity and is only in this pack
* End Credits Speech - relive the triumphant moment when Hawkie defeated the final boss in Elden Ring (uncensored)

### Loaded
This edition has all the original sounds, plus as many more as I can pack in there over time.  I discovered how to include more than the default number of sounds, so you'd better believe I'm stuffing this thing full.  The only thing this pack won't contain is profanity.

#### This edition currently has 499 sounds
* Villagers: 45 ambient, 60 celebrate,  46 death, 116 hurt, 46 no, 88 trade, 76 yes
* Witches: 13 ambient, 5 celebrate
* Music Discs: Disc "11" has been replaced with "Hawkie covers a song poorly"
* End Credits Speech - relive the triumphant moment when Hawkie defeated the final boss in Elden Ring (censored)

### Technical notes
#### Sounds
All the sounds in each pack (with the exception of the original edition) are fully normalized, and game volume directives are now specified in the sounds.json file, which makes changing the volume for a specific file much easier, and can even be done by you, just by editing the zip file, if you think a particular sound is too loud.

#### Pack types
As of version 3.0, there are two distinct types of pack.  The standard edition that I have been releasing, which aggressively stomps on all sounds from packs that are beneath it in your list of installed packs, and a new "addon" type, that is completely transparent and allows all sounds from "lower" packs to be considered for random playback.

Note that if every pack that you install is an "addon" pack, you will also hear the default Minecraft villager sounds from the vanilla game.  If you want to layer these packs together, you must put a standard edition on the bottom of the list (above the default pack, of course), and the other two need to be "addon" type packs.

#### Building from source
At any time, if you are impatient for a new version and you know what you are doing, you can clone my repository to your hard drive and pack the files yourself. I will not, however, be able to provide any kind of support for versions packed by other people. Make sure you choose a name that doesn't match my format; perhaps use the word "custom" or the date you cloned the repo.

## Bug reports and feature requests
Please report any bugs or issues or feature requests you have on the project's Github [issues](https://github.com/Kuoxsr/fhb-villager-sounds/issues) page.  I have taken requests through Twitch chat during a live-stream and/or Minecraft chat, but in the future, I'd like to have a record of change requests and queue them properly, so I may ask you to formally visit that page.

#### A suggestions format might look like the following

* Take a clip of her Twitch live-stream during the moment of audio you think would make a nice event sound for this pack
* Open an [issue](https://github.com/Kuoxsr/fhb-villager-sounds/issues) on the github page, describing the word or phrase from the clip that you'd like to see in the pack
* Include a link to the Twitch clip
