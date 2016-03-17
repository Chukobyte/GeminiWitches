#[0.2.5] - Mar 16, 2016
------
- Fixed movement for Devil and Hedgehog.  Added proper acceleration.
- Added another song.

#[0.2.4] - Mar 15, 2016
------
- Had to change dirt wall and grass land objects.  place_meeting commands were expensive.
- Added time line for cloud moving from left to right.
- Improved Devil AI.
- Added Tree
- Changed rm_one

#[0.2.3] - Mar 14, 2016
------
- Changed rm_main up a bit.
- Cleaned up code for dirt wall and grassland objects.

#[0.2.2] - Mar 13, 2016
------
- Added selection cursor for choose_character and play_again rooms.

#[0.2.1] - Mar 11, 2016
------
- More changes to bg music
- Water Soul Gem now doubles mp regen.
- Fixed enemy movement when attacked.
- Added controller support for powers

#[0.2.0] - Mar 10, 2016
------
- Changed background music up a bit.
- Added death by falling
- Have rooms now with death pits.
- Hedgehog now doesn't fall off ledges.
- Added small flowers.

#[0.1.9] - Mar 09, 2016
------
- Flower of life now doesn't boost hp beyond maxhp.
- Changed rooms around a bit and cleaned up the ugly edges.
- Each element now add a stat boost
- The exit door is now visible without defeating all enemies.  Except for the last boss room.

#[0.1.8] - Mar 08, 2016
------
- Tweaked coin creation from enemy death.  Now check 25 pixels horizontally for space without Solid.
- Money now resets to 0 when player dies.

#[0.1.7] - Mar 07, 2016
------
- Slightly tweaked bee and hedgehog's sight range.
- Added a bigger level for rm_three.
- Added closed door.

#[0.1.6] - Mar 06, 2016
------
- Added FireBurst power.  Obtains when player collects fire gem.
- Updated level drawing code.

#[0.1.5] - Mar 05, 2016
------
- Tweaked Devil and Hedgehog enemies.

#[0.1.4] - Mar 03, 2016
------
- Added Coin Counter and Timer.

#[0.1.3] - Mar 02, 2016
------
- Added hedgehog enemy
- now the door is only opened when all enemies are defeated
- enemy depths set to -5

#[0.1.2] - Mar 01, 2016
------
- Improved Devil Enemy movement.
- Devil Enemy is the boss for now.
- Can now choose two gems before entering

#[0.1.1] - Feb 29, 2016
------
- Added Devil Enemy.
- Added Devil Shot power for Devil Enemy.

#[0.1.0] - Feb 28, 2016
------
- Added gold and silver coins.  Also added coin pickup sounds.
- Added soul gems and flowers.
- Added Piecing Water Crystal, Flower of Life, Fly, Fire Boost (fire temp power) powers!

#[0.0.9] - Feb 27, 2016
------
- Added grass and dirt sprites and updated rooms with them.  The way it's implemented is temporary.
- Fixed stuck in wall bug (note to self, be careful of modifying masks!!!)
- Added background music 
- Added sounds for player attacking, jumping, and exiting door.
- Added sound for when enemy is destroyed.

#[0.0.8] - Feb 26, 2016n
------
- Added death state.  Player can now die! Also added death sprites.
- Fixed bug where Bug enemy would get stuck in the walls.  (lol at Bug bug)
- Added play_again room.
- tweaked death state.

#[0.0.7] - Feb 25, 2016
------
- tweaked attack collision detection

#[0.0.6] - Feb 24, 2016
------
- Enemies now flash red and displays hurt sprite when damaged but not killed.
- Added health and magic bar.
- Added PlayerStats Object to keep track of player attributes.
- Player now is invincible for a small frame when hit.

#[0.0.5] - Feb 23, 2016
------
- Enemies poof in a smoke when they are destroyed.
- Added exit door and two other rooms.

#[0.0.4] - Feb 22, 2016
------
- Added slight delay to Player basic attack.
- Added Bee attack states.  Bee now swoops towards a player when in range.

#[0.0.3] - Feb 21, 2016
------

- Added attack and magic attack.  Can do basic attack with 'A'  Can shoot magic pellets by pressing 'S'.

- Can destroy enemies by jumping on their heads or shooting them with magic.

#[0.0.2] - Feb 20, 2016
------

- Added menu for selecting between two witches.
- Added character portraits for both characters.
- Possible fix for horizontal collision bug when falling. (used generic player mask for character objects)
- Added text to "Choose Your Character" screen.
- Added Bee and Bug enemies.

#[0.0.1] - Feb 17, 2016
------

- Initial Commit
- Added female character named "Seika"
- She only has basic movement from left to right.
- Can now detect walls as Solid object.  Can also jump on platforms.