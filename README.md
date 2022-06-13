# Kong-Donkey-s-Adventures
  Group Name: The Kongquistadors 
  
  Group Members: Luca Gottardo & Aaron Gershkovich
  
  Project Description: In this project, we will be creating a Donkey Kong inspired game in Processing. This will include various levels, platforms that allow you to go up but not back down, barrells rolling down from the top, and various power ups for the character, such as bigger jumps, shielding, and barrell breaking abilities.
  
  Prototype Document:https://docs.google.com/document/d/1_N4cdUUosTUQ31bio0XW1iaC-oyYeH5gH2Ntmswnvnw/edit

  Compile/Run Instructions: As a processing based game, the game must be opened and ran via processing. Once the game is opened, it will have a plain welcoming screen, and to start playing the game, press 'p.' The character is moved with the WASD keys. The goal is to reach the coin on the top without being hit from the barrels Donkey Kong throws AND without hitting Donkey Kong himself (these will result in death!). Only by reaching the coin at the top can you proceed to the next level. Falling off the screen at the bottom or going too far out to the right or left sides of the screen will also result in death. Hammers are distributed amongst certain platforms on certain levels of the game, and they can be used to break incoming barrels ONLY IF YOUR MOUSE IS CLICKED (spamming may come in useful). Score can be accumulated by breaking barrels (+100), collecting coins (+250), and killing Kong (+500, more details later). ADDITIONAL INFORMATION: Level 3 is not a product of laziness; Kong throws barrels to his right so the coin behind him gets covered by the barrel and therefore makes it harder to collect. Levels 1, 2, and 4 have the same platform arrangement, but level 2 has no hammers, and level 4 has very hard barrel speed and frequency. Beating the game is accomplished by winning in level 5, which can only be done by grabbing the hammer on the highest platform and hitting donkey kong with it, therefore killing him. CHEAT CODES: Pressing the number that corresponds to the level you want to play will jump you immediately to that level. (eg pressing '2' immediately starts level 2). Pressing 'c' immediately wins the level you are in for you, though no score is accumulated. 'p' will advance to the next level. and 'r' will restart the level you are currently on.
  
  DEVELOPMENT LOG: 
  5/23: Luca- Today I made the barrel class, modeled off of our orb labs, added its field, constructors, and made the Game class
Aaron- absent

5/24: Luca- Today I made the platform class and monster classes, and worked on their display & throw barrel methods
Aaron- absent

5/25: Luca- Today I worked on adding some platforms to the Game file, and I started working on branching & merging on github
Aaron- absent

5/26: Aaron- I worked to create the basic elements of character meaning basic elements and some methods. I also was able to figure out how to resolve merge conflicts when merging ranches on github. 
Luca- Today I added the Controller class to dictate character movement as displayed in class, then tried to apply it to Game. I also learned to resolve merge conflicts with my partner

5/27: Luca- Today I pushed some unpushed changes from Yesterday, and worked on Barrel some more in an effort to make it roll off of platforms by giving it ySpeed but zeroing it if it was on a platform

5/29: Aaron- I started to work on the movement of the character using the code given by Mr. K that allowed the characters to move. I was also able to merge and practicing working together with github. 

5/30: Aaron- I worked on adding jump and gravity, but still ran into some issues with the character phasing through all the platforms but the top one. Additionally, the character’s gravity works, but the jump teleports the character up and does not actually jump. 
Luca- Absent/COVID

5/31: Aaron- Created a death scene but it doesn’t really last long enough and I think I need to redo it.
Luca- Absent/COVID

6/1: Aaron- added win scene if you touch the monster but it also does not long enough
Luca- Absent/COVID

6/2: Aaron- I made jump work so that the character does not fall through the platform any more and can continue to stay on the platform instead of falling through.
Luca- Absent/COVID


6/3: Aaron- Fixed the barrel rolling mechanic to roll down the platforms in the right way (was not working in the beginning and the demo).
Luca- Absent/COVID

6/6: Luca- Today I worked on fixing the monster’s throw barrel, by fixing the arithmetic behind its barrel throwing in Game, and by tweaking the constants so each difficulty level would have a reasonable difficulty

6/7: Luca- Today I fixed the character’s double jumping ability, and worked on the “You Win” and “Game Over” screens

6/8 & 6/9: Aaron- added the image for Mario, but the background is still there. resolved merge conflict
Luca- Today I worked on designing various levels, how they would look differently, and how the game would end. 

6/10: Luca- Today I worked on resolving merge conflicts and I worked with my partner to draw out everything we still need to do to finalize our project on paper 

6/11: Luca- Today I worked on each of the levels on paper and computed their placements so that the screen would look nicer and playable

6/12: Aaron- I added better images for the each of the different Mario scenarios, like the jumping and hammer mechanics, but I also figured out how to remove the backgrounds from each of the images. I also added Hammer mechanics, and images for Mario holding the hammer, and Donkey Kong. Also added more text to the end screens. 
Luca- Today I worked on finishing all levels and I created and completed the very simple Coin class. I also stayed up too late trying to fix all the tiny little things that didn’t affect the project as a whole but were irritating
