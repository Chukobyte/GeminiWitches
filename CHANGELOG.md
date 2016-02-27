#[0.0.9] - Feb 27, 2016
------
- Added grass and dirt sprites and updated rooms with them.  The way it's implemented is temporary.
- Fixed stuck in wall bug (note to self, be careful of modifying masks!!!)

#[0.0.8] - Feb 26, 2016
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