#[0.6.5] - May 25, 2016
------
- Made Seika and Amaya's attack one button.

#[0.6.4] - May 24, 2016
------
- Added knockback to Amaya when punching.

#[0.6.3] - May 21, 2016
------
- Removed Mirror Shot from Amaya.
- Fixed Amaya soul element controller bug.

#[0.6.2] - May 18, 2016
------
- Removed punch from Seika.
- Removed charge attack from Amaya.

#[0.6.1] - May 17, 2016
------
- Tweaked Seika's blur effects more.
- Added extension to Amaya's punch.

#[0.6.0] - May 16, 2016
------
- Started working on Seika's blur and jump special effect.

#[0.5.9] - May 15, 2016
------
- Gave Seika a slight boost in spd and jump height
- Gave Amaya a slight boost in punch attack strength and good boost for knock back 

#[0.5.8] - May 14, 2016
------
- added macro for screen shot
- increase hedgehog and devil enemy sight range.

#[0.5.7] - May 11, 2016
------
- tweaked bg_forest.
- added lives (default to 3).
- added options menu.

#[0.5.6] - May 08, 2016
------
- added instruction "Press start to skip..." for cutscene.

#[0.5.5] - May 07, 2016
------
- added TextBox object and scripts.
- added text box to cutscene.

#[0.5.4] - May 05, 2016
------
- added water splash effect to water top.
- added bubbles.

#[0.5.3] - May 02, 2016
------
- Updated background with rough copies
- changed mirror shot sprite based on character selected.
- added sound effect for hp and mp pickups.
- added a random variation in pitch for coin pickups.
- added rough icon.

#[0.5.2] - Apr 30, 2016
------
- fixed boss door not opening after completing rooms.

#[0.5.1] - Apr 28, 2016
------
- added charging sound to mirror shot.
- switched up water and wind levels.

#[0.5.0] - Apr 26, 2016
------
- fixed most sprites by flooring the x and y values.

#[0.4.9] - Apr 25, 2016
------
- Fixed player sprite issues by rounding the x and y values.

#[0.4.8] - Apr 24, 2016
------
- added rough background

#[0.4.7] - Apr 23, 2016
------
- Enemies now drop health and magic power refil containers

#[0.4.6] - Apr 18, 2016
------
- Devil enemies drop elemental gems.

#[0.4.5] - Apr 18, 2016
------
- Every room has a different color devil boss.
- Gave boss in last room more health.

#[0.4.4] - Apr 17, 2016
------
- Added 3 other color sprites for devil enemies.

#[0.4.3] - Apr 15, 2016
------
- fixed door bug.

#[0.4.2] - Apr 13, 2016
------
- added cutscene in the beginning.

#[0.4.1] - Apr 12, 2016
------
- added more sound effects
- charge is lost when attacking with punch

#[0.4.0] - Apr 11, 2016
------
- Lava now does damage

#[0.3.9] - Apr 10, 2016
------
- Tweaked rooms a bit more.  Now player has the collect the four gems to fight the final boss.

#[0.3.8] - Apr 7, 2016
------
- Tweaking rooms.

#[0.3.7] - Apr 5, 2016
------
- Added charge to mirror shot.  When charged attack does 2x damage and is 3x bigger!

#[0.3.6] - Apr 3, 2016
------
- Changing visuals for enemy hurt state, element attack collisions, etc.
- Decoupled enemy hurt state dependency.

#[0.3.5] - Apr 2, 2016
------
- Added fire themed room (rough draft)

#[0.3.4] - Apr 1, 2016
------
- Made gem collision increase element level.

#[0.3.3] - Mar 28, 2016
------
- Added elements icons to pause menu

#[0.3.2] - Mar 27, 2016
------
- Added pause menu.
- F5 to reset game.
- Made rooms persistent.  Persistent is set to false when player dies
so that the room can restart.

#[0.3.1] - Mar 26, 2016
------
- Updated Fire Burst.  Is now a rotating shield like attack.
- Earth now does damage when character lands on enemy.
- Piercing Water Shot grows larger under water.
- Starting to work on cut scene stuff.
- Wind now gives double jump.
- Changed room view and port to 534 x 300.

#[0.3.0] - Mar 25, 2016
------
- added game menu.
- made element powers more coupled.

#[0.2.9] - Mar 23, 2016
------
- added pause
- Renamed some things to match the story.

#[0.2.8] - Mar 20, 2016
------
- Minor tweak to swim state.

#[0.2.7] - Mar 19, 2016
------
- Updated player_swim_state and added remaining swim sprites.

#[0.2.6] - Mar 18, 2016
------
- Updated new song.
- Added water and room.
- Added incomplete swimming.
- Moved PlayerStats.spd addition to player_init() script.

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