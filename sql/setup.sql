
CREATE DATABASE videogames;
CREATE TABLE videogames.user (
    user_id VARCHAR(30),
    password VARCHAR(30),
    firstname VARCHAR(30),
    lastname VARCHAR(30),
    email VARCHAR(30),
    address1 VARCHAR(30),
    address2 VARCHAR(30),
    city VARCHAR(30),
    state VARCHAR(30),
    zip VARCHAR(30),
    country VARCHAR(30),
    credit_card_type VARCHAR(30),
    credit_card_number VARCHAR(30),
    credit_card_cvv VARCHAR(30),
    credit_card_expiry VARCHAR(30),
    last_login VARCHAR(30),
    PRIMARY KEY (user_id)
);

CREATE TABLE videogames.game (
    game_id VARCHAR(30),
    game_name VARCHAR(250),
    game_description VARCHAR(8000),
    console VARCHAR(250),
    num_players VARCHAR(30),
    coop VARCHAR(30),
    genre VARCHAR(250),
    release_date VARCHAR(30),
    developer VARCHAR(250),
    publisher VARCHAR(250),
    front_box_art VARCHAR(250),
    back_box_art VARCHAR(250),
    logo VARCHAR(250),
    developer_logo VARCHAR(250),
    price VARCHAR(30),
    discount VARCHAR(30),
    PRIMARY KEY (game_id)
);

CREATE TABLE videogames.comments (
    comment_id int NOT NULL AUTO_INCREMENT,
    user_id VARCHAR(30),
    game_id VARCHAR(30),
    comment_date VARCHAR(30),
    comment_details VARCHAR(8000),
    ratings VARCHAR(30),
    PRIMARY KEY (comment_id),
    FOREIGN KEY (user_id)
        REFERENCES user(user_id),
    FOREIGN KEY (game_id)
        REFERENCES game(game_id)
);

        
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('344', 'Dr. Mario', 'A puzzle game similar to Tetris, Dr. Mario features Nintendo mascot Mario as a doctor. Gameplay consists of dropping two-sided vitamin capsules into a playing field 8 blocks wide by 16 blocks high resembling a medicine bottle, populated by viruses of three colors', 'Nintendo Entertainment System (NES)', '2', 'No', 'Puzzle', '07/27/1990', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/344-2.jpg', 'http://thegamesdb.net/banners/boxart/original/front/344-2.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('3178', 'Dr. Mario', 'Its Dr. Mario for an intense new challenge! Mario throws multi-shaded vitamin capsules into a bottle that contains an ugly variety of nasty viruses. You can move, shift or spin the capsules as they fall. Arrange them to align with other capsules on top of a virus. If you can get 4 or more of the same shade in a row, POOF! They disappear! Destroy all of the viruses in the bottle and you progress to the next round where things get even more difficult. Dr. Mario, with germs that are fun to catch.', 'Nintendo Game Boy', '2', 'No', 'Puzzle', '12/31/1990', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3178-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3178-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('8628', 'Mario Golf', 'Forget buying expensive golf gear--Mario brings the game to you. Mario Golf features four complete 18-hole courses, 11 golfers, and precise play control. Create your own golfer and build up his or her experience and skill levels by competing in various tournaments and head-to-head matches. The more you play, the stronger and more accurate your golfer becomes. There are many different modes of play in Mario Golf, including a wide variety of minigames designed to challenge even the most level-headed swingers.', 'Nintendo Game Boy Color', '2', 'No', 'Sports', '10/01/1999', 'Camelot Software Planning', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/8628-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/8628-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('14743', 'Mario Clash', 'Mario finds himself pitted against a host of evil and nasty enemies. You must help him outwit the Spikes, Para-Goombahs, and other beasts and evils that lurk inside a tower that reaches to the clouds. After stunning a Koopa, he uses it as ammo against his enemies! The attack is relentless!

But watch out, there are also creatures made of fire and ice that must be avoided -- hazards at every turn. Even the narrow ledges on which Mario teeters and the pipes he races through must be traversed with caution!

The pace gets hotter at each level, and the action jumps right out at you! Hold on! This 3-D Virtual Boy game offers a white-knuckled adventure that will keep you on the edge of your seat!', 'Nintendo Virtual Boy', '1', 'No', 'Action', '10/01/1995', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/14743-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/14743-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('141', 'Paper Mario', 'Mario pals around in an all-new action adventure! Marios back in his first adventure since Super Mario 64, and this time, Bowsers bent on preventing a storybook ending. When Princess Peach is kidnapped, Mario plots to rescue the seven Star Spirits and rid the Mushroom Kingdom of Koopas cruel cohorts. As he travels from the tropical jungles of Lavalava Island to the frosty heights of Shiver Mountain, hell meet up with seven all-new companions... and hell need help from each one or therell be no happily ever after.', 'Nintendo 64', '1', 'No', 'Action', '02/05/2001', 'Intelligent Systems', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/141-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/141-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('189', 'Mario Bros.', 'Mario and Luigi are doing some underground plumbing when all sorts of weird creatures come flying out of the pipes. Turtles, crabs - even fighterflies - attack the helpless Mario Bros. Its up to you to kick, punch, and knock out these sewer pests before time runs out! But beware. Just when you think you got rid of them, they come back for more! Play against the computer, or with a friend - either way, this is one underground classic youll want to play time and time again!', 'Nintendo Entertainment System (NES)', '2', 'No', 'Action', '06/01/1986', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/189-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('5178', 'Mario Bros.', 'Mario the carpenter and his brother Luigi are hopping mad! The water pipes in their house are blocked with nests of crawling creatures. If the two brothers cant get rid of them theyll never take a bath again!

Your task is to help Mario and Luigi knock the pipe pests off floors and into a puddle of water below. Each time a pest is knocked off, you earn points; when all the pests are knocked off, the next round begins. You start the game with five lives, and earn additional lives every 20,000 points.', 'Atari 5200', '2', 'No', 'Platform', '03/24/1983', 'Atari', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/5178-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/5178-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('48986', 'Paper Mario', 'Return the Star Rod to its proper place in Star Haven.

After Bowser™ steals the Star Rod and kidnaps Princess Peach™, Mario™ plots to rescue the seven Star Spirits and free the Mushroom Kingdom from the Koopas rule. As Mario travels from the tropical jungles of Lavalava Island to the frosty heights of Shiver Mountain, hell need all the help he can get. Master the abilities of the seven Star Spirits and the other allies joining the adventure to aid our hero on the battlefield. There are over 50 Badges to locate that, when equipped, will grant special abilities and powerful attacks. The turn-based battle system will make fighting Bowsers baddies equal parts strategy and timing. Discover over 100 items, mix them together, and cook up fantastic creations that will send your enemies spinning and fleeing. Close the book on Bowsers story before his evil deeds turn the world upside down and only his wishes come true!

Virtual Console
This classic game is part of the Virtual Console service, which brings you great games created for consoles such as NES™, Super NES™ and Game Boy™ Advance. We hope youll enjoy the new features (including off-TV play) that have been added to this title.', 'Nintendo Wii U', '1', 'No', 'Action', '04/30/2015', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/48986-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('1137', 'Mario Tennis', 'All of your favorite characters hit the court in a wild and wacky multiplayer tennis game from the makers of Mario Golf. Mario, Luigi, Bowser, Peach, Toad, and Donkey Kong lead off the all-star, 14-player line-up. The fast-paced action will have you unleashing vicious volleys, life-saving lobs, ballistic backhands and electrifying super-charged smashes!', 'Nintendo 64', '4+', 'No', 'Sports', '07/21/2000', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/1137-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/1137-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('21450', 'Paper Mario', 'Paper Mario is a graphically innovative game that breaks the confines of the RPG genre. Now slimmed down, everyones favorite plumber flips, spins, jumps, and hammers his way through scads of exotic worlds that teem with a huge and hugely entertaining supporting cast. Players control numerous characters, both old and new, in a complex, nonlinear story that follows different scenarios depending on player choices. A dizzying collection of spells, attacks, skills, and special items can be collected by players willing to thoroughly explore the lush 3-D environments!', 'Nintendo Wii', '1', 'No', 'Role-Playing', '07/30/2007', 'Intelligent Systems', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/21450-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('48618', 'Dr. Mario', 'Is there a doctor in the house?

Feeling under the weather? Well, Dr. Mario has the cure for you! Help him fight bodies of nasty viruses with multi-colored vitamins, eliminating those germs faster than they can multiply. Rotate the vitamins as they drop, and gain a higher score by aligning multiples of the same color. Clear all of the viruses to move on to the next round. But watch out as the vitamins start dropping at a faster rate! Not enough of a challenge? Try competing against a buddy, and prove that youre just what the doctor prescribed!

Virtual Console
This classic game is part of the Virtual Console service, which brings you great games created for consoles such as NES™, Super NES™ and Game Boy™ Advance. We hope youll enjoy the new features (including off-TV play) that have been added to this title.', 'Nintendo Wii U', '2', 'No', 'Puzzle', '03/27/2014', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/48618-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('48909', 'Mario Tennis', 'The game that made Mario™ a sports legend!

The Mushroom Kingdoms finest hit the court in this wild multiplayer tennis game from Camelot, the talented developers behind Golden Sun™ and Mario Golf™! Put some power and spin into your shots to claim victory on your own. Or go head-to-head with up to three friends in multiple modes such as Ring Shot, Exhibition, and more!

Mario™, Luigi™, Bowser™, Princess Peach™, Toad™, and Donkey Kong™ lead off the all-star, 14-character lineup, including some fan favorites this game popularized, like Daisy™. The fast-paced action will have you unleashing vicious volleys, lifesaving lobs, ballistic backhands, and electrifying supercharged smashes! Dont forget: this is tennis with a Mario twist. Take the Piranha Challenge and brave the barrage of bouncing balls, or try out the Bowser Stage to attack opponents with Green Shells. Its easy to see why this sports classic has stood the test of time.

Virtual Console
This classic game is part of the Virtual Console service, which brings you great games created for consoles such as NES™, Super NES™ and Game Boy™ Advance. We hope youll enjoy the new features (including off-TV play) that have been added to this title.', 'Nintendo Wii U', '4+', 'Yes', 'Sports', '07/09/2015', 'Camelot', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/48909-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('1136', 'Mario Golf', 'Forget buying expensive golf gear--Mario brings the game to you. Mario Golf features four complete 18-hole courses, 11 golfers, and precise play control. Create your own golfer and build up his or her experience and skill levels by competing in various tournaments and head-to-head matches. The more you play, the stronger and more accurate your golfer becomes. There are many different modes of play in Mario Golf, including a wide variety of minigames designed to challenge even the most level-headed swingers.', 'Nintendo 64', '4+', 'No', 'Sports', '07/30/1999', 'Camelot Software Planning', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/1136-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/1136-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('6395', 'Mario Bros.', 'Mario and Luigi are doing some underground plumbing when all sorts of weird creatures come flying out of the pipes. Turtles, crabs - even fighterflies - attack the helpless Mario Bros. Its up to you to kick, punch, and knock out these sewer pests before time runs out! But beware. Just when you think you got rid of them, they come back for more! Play against the computer, or with a friend - either way, this is one underground classic youll want to play time and time again!', 'Commodore 64', 'N/A', 'No', 'Platform', 'N/A', 'Ocean', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/6395-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/6395-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('5309', 'Mario Bros.', 'Mario the carpenter and his brother Luigi are hopping mad!  The water pipes in their house are blocked with nests of crawling creatures.  If the two brothers cant get rid of them theyll never take a bath again!

Your task is to help Mario and Luigi knock the pipe pests off floors and into a puddle of water below.  Each time a pest is knocked off, you earn points; when all the pests are knocked off, the next round begins.  You start the game with five lives, and earn additional lives every 20,000 points.', 'Atari 2600', '2', 'No', 'Platform', '07/06/1983', 'Atari', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/5309-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/5309-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('14904', 'Hotel Mario', 'Bowser has taken over the Mushroom Kingdom, -Hes captured Princess Toadstool and is holding her in one of the seven hotels in the kingdom. Only you and Mario can free the Princess but youll have to battle Koopas, Parabombs, Banzai Bill, Spiney, Monty, Pat the Bat and other nefarious nasties!', 'Philips CD-i', '1', 'No', 'Puzzle', '08/05/1994', 'Philips Fantasy Factory', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/14904-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/14904-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('16258', 'Mario Bros.', 'Mario Bros.  is an arcade game published and developed by Nintendo in 1983. It was developed by Shigeru Miyamoto. 

Mario Bros. features two plumbers, Mario and Luigi, having to investigate the sewers of New York after strange creatures have been appearing down there. The objective of the game is to defeat all of the enemies in each phase. The mechanics of Mario Bros. involve only running and jumping. Unlike future Mario games, players cannot jump on enemies and squash them, unless they were already turned on their back. Each phase is a series of platforms with four pipes at each corner of the screen (in the old version along with an object called a "POW" block in the center). Both sides of every phase feature a mechanism that allows the player to go off-screen to the left and appear on the right and vice versa.
The player gains points by defeating multiple enemies consecutively and can participate in a bonus round to gain more points. Enemies are defeated by kicking them over once they have been flipped on their back. This is accomplished by hitting the platform the enemy is on directly beneath them. If the player allows too much time to pass after doing this, the enemy will flip itself back over, changing in color and increasing speed. Each phase has a certain number of enemies, with the final enemy immediately changing color and increasing its speed to maximum. There are three enemies in all: the Shellcreeper, which simply walks around; the Sidestepper, which requires two hits to flip over; and the Fighter Fly, which moves by jumping and can only be flipped when it is touching a platform. Players may also make use of the above-mentioned "POW" block, which flips any enemy touching a platform or the floor when a player hits it from below. This item can be used three times before it disappears. Coins appear whenever enemies are defeated and may be collected for bonus points.
As the game progresses, elements are added to increase the difficulty. Fireballs either bounce around the screen or travel directly from one side to the other, and Slipices can freeze platforms, causing Mario and Luigi to skid. In addition, icicles start to form under the platforms and fall loose. Bonus rounds give the players a chance to score extra points by collecting coins without having to deal with enemies; the "POW" block regenerates itself on each of these screens.', 'Arcade', '2', 'Yes', 'Action', '07/14/1983', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/16258-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/16258-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('48903', 'Mario Bros.', 'Mario and Luigi bring the POW! in this classic arcade game!

Mario™ and Luigi™ are doing some underground plumbing when all sorts of strange creatures come flying out of the pipes. Help the two brothers clear stages by collecting coins and avoiding getting hit by enemies. Crabs, turtles, and fighter flies must be cleared out by jumping underneath the platform they step on and then kicking them away. But beware! Just when you think you got rid of them, they come back for more! Play alone or with a friend. Either way, this is one underground classic you will want to play time and time again.

Virtual Console
This classic game is part of the Virtual Console service, which brings you great games created for consoles such as NES™, Super NES™ and Game Boy™ Advance. We hope youll enjoy the new features (including off-TV play) that have been added to this title.', 'Nintendo Wii U', '2', 'No', 'Action', '06/20/2013', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/48903-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('42', 'Mario Party', 'Every game in the main series has a standard Party Mode in which up to four players play through a board, trying to collect as many stars as possible. In every turn, each player rolls a die and progresses on the board, which usually has branching paths. Coins are primarily earned by performing well in a minigame played at the end of each turn. On most boards, players earn stars by reaching a star space and purchasing a star for a certain amount of coins. The star space appears randomly on one of several pre-determined locations and moves every time a star is purchased, usually occupying a blue space.
Every Mario Party contains at least 50 to almost 110 minigames with a few different types. Four-player games are a free-for-all in which players compete individually. In 2-on-2 and 1-on-3 minigames, players compete as two groups, cooperating to win, even though they are still competing individually in the main game. Some minigames in Mario Party are 4-player co-op, even though it doesnt say it. In most situations, winners earn ten coins each.', 'Nintendo 64', '4+', 'No', 'Action', '02/08/1999', 'Hudson Soft', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/42-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/42-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('1781', 'Mario Paint', 'Mario Paint lets you draw, paint, animate and compose music! Creation! Imagination is your only limit with an amazing variety of drawing tools. Animation! Add exciting dimension by creating moving animation with up to 9 frame sequences. Orchestration! Compose your own songs by selecting from over 15 different musical sounds and the entire scale of notes. Coordination! Increase your Super NES Mouse dexterity by playing Gnat Attack, the clever fly swatter game included inside.', 'Super Nintendo (SNES)', '1', 'No', 'Puzzle', '05/05/1992', 'Intelligent Systems', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/1781-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/1781-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('8629', 'Mario Tennis', 'Take your game to the next level with mario Tennis! Get advice from coaches, test your groundstrokes against "The Wall," then hit the courts to ace the competition and earn a spot on the varsity squad. Play your way to the top on your own in singles, or power up a partner for doubles competition. When youre good enough, youll enter the Island Open, where youll face the fiercast players around...and maybe even challenge the greatest player of all-Mario!', 'Nintendo Game Boy Color', '2', 'No', 'Sports', '06/16/2001', 'Camelot Software Planning', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/8629-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/8629-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('31870', 'Dr. Mario', 'Dr. Mario is a falling block tile-matching video game,[13] in which Mario assumes the role of a doctor, dropping two-colored medical capsules into a medicine bottle representing the playing field. This area is populated by viruses of three colors: red, yellow, and blue. In a manner and style considered similar to Tetris,[14] the player manipulates each capsule as it falls, moving it left or right and rotating it such that it is positioned alongside the viruses and any existing capsules. When four or more capsule halves or viruses of matching color are aligned in vertical or horizontal configurations, they are removed from play. The main objective is to complete levels, which is accomplished by eliminating all viruses from the playing field. A game over occurs if capsules fill up the playing field in a way that obstructs the bottles narrow neck.[15]

Players can select the degree of starting difficulty any time a new game is started. The initial level chosen is a value between zero and twenty that determines the number of viruses to clear, and the three game speed options change how fast the capsules fall in the bottle. The players score is based solely on the elimination of viruses, not on the time taken to complete the level or the number of capsules used. If players complete the highest difficulty level, they can continue playing to accumulate a higher score, but the number of viruses to clear remains the same. Additional points are awarded when multiple viruses are eliminated at once, but no additional points are awarded for initiating chain reactions, in which the elimination of one set of objects triggers the elimination of another set. The game speed is also a factor in how the game calculates scoring; higher speed levels yield more points.', 'Arcade', '1', 'No', 'Puzzle', 'N/A', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/31870-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('21047', 'Mario Bros.', 'Mario the carpenter and his brother Luigi are at it again! This time they must rid their house of crawling pests!

These bizarre creatures have names like Shellcreeper, Sidestepper, and Fighterfly. Test your skills as you bump these pesky bugs off brick floors into the water below. But beware of Slipice the Iceman. You must stop him before he covers the floors with a treacherous layer of slippery ice!

Collect as many coins as you can.', 'Atari 7800', '2', 'Yes', 'Platform', '07/07/1988', 'Atari', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/21047-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/21047-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2348', 'Super Mario Advance 2: Super Mario World', 'One of Marios greatest adventures is in your hands!

Bowser and his crew of cruel Koopalings have taken over Dinosaur Island, but luckily, Mario and Luigi are up for some Koopa-kicking. As they ride Yoshi, search for P-Switches, find secret paths, blast fireballs, and soar skyward with the Cape, theyll need to use every trick in the plumber handbook. Dino Rhinos, Chargin Chucks, and a host of unforgettable enemies await in one of the Mario Bros. biggest and most challenging adventures ever!

-All 96 levels in the palm of your hand! Ride Yoshi from the spooky Forest of Illusion to the super-tough Star Road - everything from the Super NES classic is here, powered up with all-new features for the Game Boy Advance.
-Luigis ready, so pick a Bro and go! Now you can play as Mario or his brother, Luigi, who can jump and fly higher than his famous sibling. Which Bro is the best for each stage?
-Get linked! Using a single Game Pak, link up four players and play the timeless Mario Bros. arcade game. You can even connect with Super Mario Advance Game Paks for Multi-Pak madness!', 'Nintendo Game Boy Advance', '1', 'No', 'Action', '02/11/2002', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2348-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2348-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2347', 'Super Mario Advance: Super Mario Bros. 2', 'Two Classics, One Pak!

Super Mario Bros. 2 and Mario Bros., together in one Game Pak - and on Game Boy Advance, theyre better than ever! Theres all of the running, jumping, jumping, and veggie flinging that made NES Super Mario Bros. 2 a smash hit, plus new enemies and bigger items. And in the updated arcade classic Mario Bros., you can work together or have a brawl bumping off baddies and collecting coins. It all adds up to advanced Mario mayhem!

- 20 levels of fiend-infested fun! Play as Mario, Luigi, Peach and even Toad, each with unique running, jumping, and lifting abilities. Hurl an amazing array of items like bombs, turtle shells and POW blocks to topple enemies and clear the path!

-Two multiplayer modes for up to 4 players! In Single-Pak play, up to four can connect with Game Link cables and just one Game Pak. In Multi-Pak play, connect up to four Game Boy Advance systems using Game Link cables and one Game Pak per person. (Requires Game Boy Advance Game Link cable(s), sold separately.)

-Powered up play on Game Boy Advance! The worlds most powerful handheld system brings you bright, colorful graphics, more on-screen enemies, and amazing voices and sound effects.', 'Nintendo Game Boy Advance', '1', 'No', 'Action', '03/21/2001', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2347-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2347-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('3275', 'Super Mario All-Stars + Super Mario World', 'Revisit the magic and fun of the classic Super Mario Bros. series on your Super NES!  Play through Super Mario World, plus all the great Super Mario Bros. games for the NES have been powered up with 16-bit graphics and sound and collected on one super game pak.  As an added bonus, the previously unreleased “Lost Levels” are included.  These super challenging courses have never been available in this country until now!

* Five great games in one game pak!  Play through Super Mario Bros., Super Mario Bros. Lost Levels, Super Mario Bros. 2, Super Mario Bros. 3 & Super Mario World!
* Battery backed memory saves up to 4 players’ progress through every game!
* Play alone or 2 players can alternate play!
* New 16-bit graphics, sound, and other surprises!', 'Super Nintendo (SNES)', '2', 'No', 'Adventure', '12/16/1993', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3275-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3275-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('33065', 'Mario Tennis: Ultra Smash', 'In Mario Tennis: Ultra Smash, up to four players can compete in tennis matches that could only take place in the Mushroom Kingdom. With the addition of Jump Shots to hit high balls overhead, or Giant Mushrooms that when picked up make characters bigger, this Mario Tennis is reborn with features enabling players to aggressively go after higher balls.

Change the sport up with new Mega Battles, using the Mega Mushroom to gain an advantage over the competition. Claim your spot in Mario Tennis lore in singles (1v1) or doubles (2v2) as you play with and against family, friends or the CPU using returning and new characters to the series.', 'Nintendo Wii U', '1', 'No', 'Sports', '11/20/2015', 'Camelot Software Planning', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/33065-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('33457', 'Mario Bros. - Multi Screen', 'In Mario Bros. you actually control 2 characters, Mario and Luigi. They are working in a bottling plant, loading cases on a conveyor belt and onto trucks.', 'Game &amp; Watch', '1', 'No', 'N/A', '03/14/1983', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/33457-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('42294', 'Mario Kart 8 Deluxe', 'Hit the road with the definitive version of Mario Kart 8 and play anytime, anywhere! Race your friends or battle them in a revised battle mode on new and returning battle courses. Play locally in up to 4-player multiplayer in 1080p while playing in TV Mode. Every track from the Wii U version, including DLC, makes a glorious return. Plus, the Inklings appear as all-new guest characters, along with returning favorites, such as King Boo, Dry Bones, and Bowser Jr.!', 'Nintendo Switch', '4+', 'Yes', 'N/A', '04/28/2017', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/42294-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('166', 'Mario Kart: Double Dash!!', 'The Mushroom Kingdom just got a whole lot more hectic as Mario and friends double up for furious kart racing. This time around, each kart holds two racers that can switch places at any time, so choose from a huge cast of favorites and pair them up any way you see fit. The character in front handles the driving duties, while the character in the rear doles out damage with six normal items and eight special items that only specific characters can use. Get ready for some intense multiplayer mayhem with your favorite characters, including Mario, Luigi, Donkey Kong, Peach, Bowser, and Koopa.', 'Nintendo GameCube', '4+', 'Yes', 'Action', '11/17/2003', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/166-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/166-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('1090', 'Dr. Mario 64', 'The flu season has come about, and its Dr. Marios duty to use his Megavitamins to heal the people of the land. However, Wario, wanting to have the fame that Dr. Mario has, attempts to steal the Megavitamins, but to no avail. Afterwards, Mad Scienstein and Rudy the Clown (from Wario Land 3) steal the Megavitamins, and both Dr. Mario and Wario give chase.', 'Nintendo 64', '4+', 'No', 'Puzzle', '04/08/2001', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/1090-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/1090-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('41', 'Super Mario Kart', 'The Super Mario GoKart Park is open for tons of racing fun!  Hit the track with Mario, Luigi, Yoshi and the Princess.  Get tough and lock fenders with Donkey Kong, Jr. and Bowser.  Even Toad and Koopa Troopa will mix it up in an all-out quest for the Gold Cup!  Race head-to-head with a friend or challenge the computer in great, split-screen, Mode 7 graphics.

Feel like a bit less speed and a lot more strategy?  Take a crack at the Battle Mode!  In four different maze-like courses you’ll use Koopa Shells, Banana Peels, Super Stars and other wacky weapons to burst your opponents target balloons and triumph!

* 2 games in 1 - Mario Grand Prix and Battle Mode
* 8  Familiar Characters
* 20 Different Tracks
* 3 Different Skill Levels
* Battery-backed memory saves your best times!', 'Super Nintendo (SNES)', '2', 'No', 'Racing', '09/01/1992', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/41-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/41-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2093', 'Super Mario All-Stars', 'Revisit the magic and fun of the classic Super Mario Bros. series on your Super NES!  All the great Super Mario Bros. games for the NES have been powered up with 16-bit graphics and sound and collected on one super game pak.  As an added bonus, the previously unreleased “Lost Levels” are included.  These super challenging courses have never been available in this country until now!

* Four great games in one game pak!
* Battery backed memory saves up to 4 players’ progress through every game!
* Play alone or 2 players can alternate play!
* New 16-bit graphics, sound, and other surprises!', 'Super Nintendo (SNES)', '2', 'No', 'Platform', '08/01/1993', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2093-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2093-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('1780', 'Mario is Missing!', 'Dont look now, but Bowsers back, and this time hes in your world! But where is that mastermind of reptilian trouble doing his dastardly deeds? And what has he done with Mario? Welcome to Mario is Missing! Take a trek with your travel agent, Luigi, and see the world! Track down troublesome turtles. Figure out where in the world you are, and what on earth happened to Mario. If your grasp of geography is good enough, youll get the goods, stomp the hoods, and grab Mario out of Bowsers ghastly guest house. A learning adventure that the whole family can share! This is no Koopa-stomping mayhem. Its a fun way to learn about our world!', 'Nintendo Entertainment System (NES)', '1', 'No', 'Puzzle', '07/01/1993', 'Radical Ent.', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/1780-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/1780-2.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2524', 'Mario Sports Mix', 'The games include volleyball, hockey (both field and ice), dodgeball, and basketball in the vein of the two companies earlier collaboration, Mario Hoops 3 on 3. There are power-up items which give advantages to the team that attains them. Each game has an Exhibition mode, in which up to four human players compete in individual matches, and Tournament mode, where up to three players play matches in a tournament structure, with modes of difficulty named Mushroom, Flower and Star.

Mario Sports Mix also includes several party games based on the mechanics of each sport. Smash Skate is based on Hockey, Bob-omb Dodge is based on Dodgeball, Feed Petey is based on Basketball, and Harmony Hustle is based on Volleyball.', 'Nintendo Wii', 'N/A', 'No', 'Sports', '02/07/2011', 'Square Enix', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/2524-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('5270', 'Mario Power Tennis', 'Mario Power Tennis features variations of tennis matches consisting of characters, courts, and scenarios based on the Mario series. The range of courts includes the standard three types of tennis court, but consists predominantly of those themed upon games in the Mario series, known as "Gimmick" courts. As well as adopting the style aesthetically, these feature thematic elements that influence how the match will be played on that surface, such as the ghosts in the Luigis Mansion court, which hinder movement when the character comes into physical contact with them.', 'Nintendo Wii', 'N/A', 'No', 'Sports', '03/09/2009', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/5270-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/5270-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('6261', 'Mario Superstar Baseball', 'The superstars of the Mushroom Kingdom have gathered on the diamond to power up Americas game! Pick a captain, fill your team with your favorite characters from the Mario universe, then hit the field. Each captain has a special Star Skill for pitching and batting, so whether youre hurling fireballs as Mario or blasting curving banana-ball dingers as DK, youve never played ball like this!', 'Nintendo GameCube', '4+', 'No', 'Sports', '08/29/2005', '|Namco|NOW Production|', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/6261-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/6261-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('6691', 'Mario & Luigi: Superstar Saga', 'An evil witch has replaced Princess Peachs fair speech with explosives! Mario and Luigi must once again come to her rescue, but this time they employ the help of Bowser, their sworn enemy. Mario and Luigi must learn new moves and combine powers to fight off enemies and move closer to the witchs castle. Guide this unlikely bunch through an abundance of minigames such as Border Jump and Mystery Carts. Combine the powers of Mario and Luigi to pull off special tag-team moves. Immerse yourself in this bright, cartoonish, and humorous world, complete with hit music featured in previous Mario games.', 'Nintendo Game Boy Advance', '1', 'No', 'Role-Playing', '11/17/2003', 'AlphaDream', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/6691-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/6691-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('12691', 'Mario Tennis Open', 'Instantly jump into the multiplayer fun, locally or online, as your Mii or your favorite Mushroom Kingdom character. Discover simple touch screen controls as well as strategic depth with different tennis swings, both which propel the tennis experience into an ever-intensifying crescendo of fun as the volleys go on.', 'Nintendo 3DS', '4+', 'No', 'Sports', '05/20/2012', 'Camelot', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/12691-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('17444', 'Mario Kart 8', 'Feel the rush as your kart rockets across the ceiling!
 
Expand your game-play options in the Mario Kart™ 8 game with two DLC packs that feature new tracks, new vehicles, and new characters like Link™ from The Legend of Zelda™ series and Isabelle from the Animal Crossing™ series/franchise. Learn more.

Race upside-down and along walls on anti-gravity tracks in the most action-fueled Mario Kart™ game yet! Take on racers across the globe and share videos of your greatest moments via Mario Kart TV.*

Driving up a waterfall or across the ceiling can provide an intense adrenaline rush, but that’s not all anti-gravity is good for. It also provides a wild new gameplay mechanic: if you collide into other racers in zero-g, you’ll earn speed boosts worth bragging about. Luckily, you can upload and share your best moments and watch your friends’ using the all-new Mario Kart TV.* Returning features include 12-player online play*, gliders, underwater racing, motorbikes, and custom karts. You can even race as Bowser’s seven minions, the Koopalings!

-Race along walls and upside-down on twisting anti-gravity racetracks!
-Share highlight videos of your greatest moments with friends via the Mario Kart TV feature and Miiverse™*
-Race and battle with friends locally* or connect online to play with random players from around the world*
-Fan favorite features from past Mario Kart™ games include gliders, underwater racing, motorbikes, mid-air tricks, and more
-For the first time ever, play as all seven of Bowser’s minions, the Koopalings!
-Crisp HD graphics and fluid animation offers players the most visually stunning Mario Kart™ yet

Also Available
Mario Kart 8: Limited Edition
Mario Kart 8 limited Edition, North American Version. Exclusive to the Nintendo NY Store. It includes a Blue Shell Figurine.', 'Nintendo Wii U', '4+', 'No', 'Action', '05/30/2014', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/17444-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('17487', 'Dr. Mario & Puzzle League', 'Dr. Mario/Puzzle League are recreations of two of Nintendos most popular puzzle creations. Though Dr. Mario has already been released on the GBA as a Classic NES Series title, the version included in the dual-pack is enhanced specifically for the Game Boy Advance hardware instead of a straight emulation of the original NES title. Puzzle League was originally brought to life as Tetris Attack, but then rebranded on the Game Boy Color as Pokemon Puzzle Challenge a few years back. The GBA version is also enhanced for the GBAs much more capable graphics hardware.', 'Nintendo Game Boy Advance', 'N/A', 'No', 'Puzzle', '11/28/2005', 'Intelligent Systems Co., Ltd.', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/17487-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/17487-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('18346', 'Mario Party: Island Tour', 'Mario Party: Island Tour lets you take the fun on the road with your Nintendo 3DS system!

Face off against friends and family in the all-new, ultimate Mario Party – a portable minigame extravaganza that’s bursting with gameplay possibilities. If you’ve never played a Mario Party game before, you’re in for a treat.

There’s always something new to see on the Party Islands.
In this ultimate showdown you can take on the road, blaze through the 7 new game boards, some of which take just minutes to play. Wrangle goombas and blast out of cannons as you tilt, tap, and draw through new minigames harnessing the unique functionality of Nintendo 3DS. Compete in new multiplayer modes including mind bending puzzles, minigame challenges, or enter a whole new reality with AR Card play for up to 4 players*. Whether in single or multiplayer, this is a portable party that never ends.', 'Nintendo 3DS', '4+', 'No', 'Adventure', '11/22/2013', 'Nd Cube', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/18346-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('21356', 'Mario no Super Picross', 'Gameplay remains the same as in Marios Picross, where the player must decipher the picture in each level, progressing to harder and harder puzzles. However, the player may also play "as" Wario, who presents a different challenge due to changes in the gameplay.

Each game is played against the clock. Opposing the picross tradition of black and white squares, the puzzles are set in stone and are picked out by Mario with a pick-axe type tool. The initial levels are smaller and a lot easier and are mainly Japanese symbols and Greek letters. When the player solves a puzzle correctly, the black-and-white representation becomes colored and animated, and the game shows the player the title of the puzzle. When the player finishes a section, Mario will congratulate them on their progress and either bow (in the first and last levels) or give a thumbs up (in all other levels).', 'Super Nintendo (SNES)', '1', 'No', 'Puzzle', '09/14/1995', 'Jupiter Multimedia', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/21356-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/21356-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('6886', 'Super Mario 64 DS', 'Super Mario 64, the classic 3D platformer for the Nintendo 64, arrives on the Nintendo DS with all-new features that take advantage of the portable systems dual screens, touch screen, and wireless multiplayer capability. Like the original game, Super Mario 64 DS challenges you to find all the power stars hidden throughout the royal castle in the effort to free Peach imprisoned inside the castle. This time, you can play as Mario, Luigi, Wario, and Yoshi, each of whom has unique abilities. Overcome the challenges on your own or battle up to three of your friends in the multiplayer modes.', 'Nintendo DS', '4+', 'No', 'Platform', '11/21/2004', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/6886-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/6886-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('41290', 'Mario Party: Star Rush', 'N/A', 'Nintendo 3DS', 'N/A', 'No', 'N/A', '11/04/2016', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/41290-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('45711', 'Vs. Dr. Mario', 'Starting with a few colored germs in their pill bottle, players must rotate and stack two-colored pills as Mario throws them into the bottle. Four like-colored pill sections stacked on the same color germ will rid your bottle of that germ. The number of germs and speed of Mario increases with each level.', 'Arcade', 'N/A', 'No', 'N/A', '05/02/1990', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/45711-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('6260', 'Mario Golf: Toadstool Tour', 'Hit the links in the Mushroom Kingdom!

Mario, Peach, Yoshi, Donkey Kong and others have tee times reserved in the Mushroom Kingdom! Challenge them to tournaments, or take them on in character matches to collect rings or nab coins! Play on resort-style courses or look out for Chain Chomps, Warp Pipes and Thwomps on the Mushroom Kingdom courses!', 'Nintendo GameCube', '4+', 'No', 'Sports', '07/29/2003', 'Camelot Software Planning', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/6260-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/6260-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('216', 'Super Mario 64', 'Mario is super in a whole new way! Combining the finest 3-D graphics ever developed for a video game and an explosive sound track, Super Mario 64 becomes a new standard for video games. Its packed with bruising battles, daunting obstacle courses and underwater adventures. Retrieve the Power Stars from their hidden locations and confront your arch nemesis - Bowser, King of the Koopas!', 'Nintendo 64', '1', 'No', 'Action', '09/29/1996', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/216-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/216-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('40', 'Super Mario Galaxy', 'Experience a gravity-defying adventure!

Become Mario as he traverses gravity-bending galaxies, traveling in and out of gravitational fields by blasting from planet to planet. Players experience dizzying perspective shifts as they run upside down through wild alien worlds that need to be seen to be believed. Whether youre surfing on a ray across an ocean in the clouds, rolling on a ball through a treacherous garden, or floating in a bubble over a poisonous swamp, theres no limit to the cosmic challenges youll encounter!

* Shake it! Controlling Mario is as simple as can be with the Wii Remote and Nunchuk. Move Mario with the Control Stick and shake the Wii Remote to perform a spin move or cue Ring Stars that launch you to and from planetary objects. You can even point at bits of stardust to collect them or latch onto Beam Stars to blaze a magnetic trail through the heavens.

* Mario can run, tiptoe, jump, triple-jump, backflip, and long-jump, but what hell do most is spin. By shaking the Wii Remote, players make Mario spin around with fists outstretched, allowing him to pummel enemies and cue Star Rings that launch him from planet to planet.

* He can also find plenty of power-ups: A Bee Mushroom turns him into Bee Mario, allowing him to fly for short periods of time and cling to honeycombs. A Boo Mushroom turns him into Boo Mario, allowing him to float and turn invisible to pass through mesh gates.

* Hell constantly collect bits of stardust. These can be fired at enemies using the B Button. A second player can even take on this role, using a second Wii Remote to stall enemies, fire stardust, or even sweep aside projectiles.', 'Nintendo Wii', '2', 'Yes', 'Action', '11/12/2007', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/40-1.jpg', 'http://thegamesdb.net/banners/boxart/original/back/40-2.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('3280', 'Tetris & Dr. Mario', 'The two greatest puzzle games are now together in one exciting game pak only on Super NES! TETRIS: The relentless building block video puzzle from Russia is back and enhanced for Super NES. Play solo, with a friend or challenge one of three computer opponents in this exciting and addicting game! DR. MARIO: Those nasty viruses have returned. Dr. Mario, vitamin pills in hand, is ready to eliminate them once more. In addition to the ever-popular 2-player game, now you can challenge the computer in the guise of the Blue, Yellow or Red Virus. MIXED MATCH: Combine Tetris and Dr. Mario and what do you get? One exciting contest for 2 players! Race against the clock to outscore your opponent while playing both Tetris and Dr. Mario!', 'Super Nintendo (SNES)', '2', 'No', 'Puzzle', '12/01/1994', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3280-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3280-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('9288', 'Mario Andretti Racing', 'Strap yourself in and crank up the engine, Andretti Racing brings the thrills and spills of stock car and Formula-1 racing to the PlayStation! Depending on personal preference, players now have the opportunity to drive around circular tracks in a NASCAR fashion or race at breakneck speeds in an Indy car circuit.

Andretti Racing comes with a variety of options including the Exhibition Race, Career, Versus, and Racing School gameplay modes. The Exhibition Race is simply a single race using either racing type. It is designed to not only save players the hassle of starting an actual Career mode, but to get them accustomed to the various racing controls.

In addition to this practice of sorts, new players interested in mastering or learning the sport should check out the Racing School. Featuring the help of Mario Andretti, Michael Andretti, and Jeff Andretti, the Racing School is a series of instructional videos that outlines the sport and gives inside information on how individual Formula-1 and stock cars are put together.

When youre ready to tackle a full season of racing, the Career mode throws you into the mix of either racing circuit. After registering your name and selecting your vehicle of choice, youll enter a ten-week season of fierce competition. Not only is the competition designed and taken from real-life racecar drivers, each opponent features realistic AI. These guys are at the top of their game...are you?

The season will take players through realistically modeled locations including the Calder Park Thunderdome, Vallejo Speedway, Grand Rapids Motorsports Complex, and the Oceanside International Raceway; track schedules and locations differ between racing types. Each track differs in its own unique way (distances, laps) requiring practice and skill to learn and memorize.

If youre being lapped and coming in last place, its time to adjust the dynamics of your vehicle! Andretti Racing allows players to customize car transmissions, select from a variety of tires including soft and slicks, adjust the front/rear wing and downforce velocities, and change gear ratios. By customizing your vehicle to optimum performance, youll have better control and consequently finish higher up in the leader board.

Additionally, Andretti Racing features the first ever PlayStation split-screen mode with a link cable compatibility; up to four players can play via two consoles! It also comes with a variety of damage, control, and in-game camera options.

 allgames

 (4 Player Game Play vis Link Cable)', 'Sony Playstation', '4+', 'No', 'Racing', '11/21/1996', 'Stormfront Studios', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/9288-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/9288-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('8704', 'Mario Kart: Super Circuit', 'Whoever hands out drivers licenses in the Mushroom Kingdom is about to be in some serious trouble. Classic Mario Kart action is back once again, this time in a colorful, lightning-fast game that you can take anywhere. Mario, Luigi, Peach, Toad, Wario, Yoshi, and Bowser are all tearing up the track, tossing Koopa Shells and laying banana peels along the way. Mario Kart: Super Circuit puts your driving skills to the test on 40 tracks, each littered with wild weapons and obstacles. Four players can compete in Mario Kart: Super Circuit using only one Game Pak. If each player has a copy of the game, bonus features and new modes of play become available.', 'Nintendo Game Boy Advance', '4+', 'No', 'Racing', '08/11/2001', 'Intelligent Systems', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/8704-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/8704-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('6859', 'New Super Mario Bros.', 'In an all new 2D side-scrolling adventure, Mario and Luigi return after nearly fifteen years. The first traditional Mario Bros. game since Super Mario World.

The character models are rendered in real time 3D, allowing for a far greater number of moves ever before seen in a Mario Bros. title. Also as the game is on DS, the touch screen allows players to store an additional power-up and view the distance still to go in a level.', 'Nintendo DS', '4+', 'Yes', 'Action', '05/15/2006', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/6859-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/6859-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('6688', 'Mario vs. Donkey Kong', 'After years of apparent goodwill, Mario and Donkey Kong are at it again--this time, on Game Boy Advance. Donkey Kong has stolen all the Mini-Mario toys from the Mario Toy Co., and now its up to Mario to hunt down his longtime nemesis and retrieve the pilfered goods. As Mario, you must race through challenging levels while finding keys and releasing Mini Marios before time runs out. Along the way, youll master new moves that can help you overcome new puzzles.', 'Nintendo Game Boy Advance', '1', 'No', 'Platform', '05/24/2004', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/6688-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/6688-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('14576', 'Mario Pinball Land', 'Jumping has always helped Mario perform heroic feats, but in Mario Pinball Land, the plumber must learn how to roll to rescue the princess. When Bowser kidnaps Peach and escapes to another dimension, a scientist transforms Mario into a ball to chase after the fiend. Now you must use your flippers to shoot a much rounder Mario into doors that lead to new areas. In his new form, Mario is also useful for knocking down enemies, picking up special bonuses, and finding power-ups.', 'Nintendo Game Boy Advance', '1', 'No', 'Sports', '06/15/2006', 'Fuse Games', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/14576-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/14576-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('24486', 'Dr. Mario Online RX', 'The all-time puzzle classic returns for the Wii generation, featuring online gameplay and a new Germ Buster mode! Destroy all the viruses trapped in the bottle by dropping and slotting capsules to create lines of matching colours. The more viruses you clear, the faster the capsules drop.

In Dr. Mario, challenge the computer in 1 Player mode, go head-to-head with a friend in 2 Player mode, or prove your skills against the world via Nintendo Wi-Fi Connection. You can also send a demo version of the game to a friend (within your region) using WiiConnect24.

In Germ Buster (based on the relaxation game in More Brain Training from Dr Kawashima), up to four players can use their Wii Remotes to grab, spin and slot capsules as your Miis try to keep the nasty bugs at bay. Who thought that catching germs could be so much fun?', 'Nintendo Wii', '4+', 'No', 'Puzzle', '05/26/2008', 'Arika', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/24486-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('24520', 'Dr. Mario Express', 'Dr. Mario Express, known in Japan and PAL regions as A Little Bit of... Dr. Mario (ちょっとDr. MARIO Chotto Dr. Mario?),[5] is a Mario action puzzle video game published by Nintendo. The game was released exclusively as a DSiWare title for the Nintendo DSi platform. Dr. Mario Express was first released as a launch title for the DSiWare service in Japan on December 24, 2008, and was released in both North America and PAL regions in 2009. The game was developed by Arika, which had also created Dr. Mario Online Rx for WiiWare.

Dr. Mario Express features the general gameplay of earlier Dr. Mario puzzle games, which focus on eliminating colored viruses from the playing field by matching them with colored capsules. Dr. Mario Express received generally positive reviews, but was criticized for offering fewer playable game modes than earlier Dr. Mario titles.', 'Nintendo DS', 'N/A', 'No', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/24520-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('22771', 'Super Mario Bros. 2', 'Originally released in Japan as Super Mario Bros.® 2, this game has previously made only brief cameo appearances in the Western hemisphere. Mario fans will appreciate the familiar look and feel of the game, while finding that its updated game play creates an entirely new challenge. No longer content just to wear different-colored overalls, Mario and Luigi also possess different skill sets (Mario can stop quicker, while Luigi can jump higher). In addition to the classic enemies already known to fans worldwide, there are also Poison Mushrooms, backward Warp Zones, and the occasional wind gust (which can help or hinder your progress) to take into account. And if that’s somehow not enough, expert players can go looking for the game’s secret worlds. So get ready to put your Mario skills to the ultimate test, and save the Princess again. Just don’t be surprised if she’s in another castle!', 'Famicom Disk System', '1', 'No', 'Action', '06/03/1986', 'Nintendo EAD', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/22771-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('28034', 'Mario Andretti Racing', 'Mario Andretti Racing is a video game that was released in 1994 on the Sega Genesis/Mega Drive. It was an early title in the newly created EA Sports line, and was developed by Stormfront Studios. The game was produced by famed sports game developer Scott Orr as part of his collaboration with Richard Hilleman in the creation of EA Sports. Race driver Mario Andretti personally guided the development of the AI used by the non-player drivers in stock cars, Indy style open wheel racing, and dirt track racing.

The games greatest innovation was the presence of different physics and AI for three kinds of racing in one cartridge.

The success of Mario Andretti Racing led Orr and Hilleman to work with Stormfront to launch the highly successful NASCAR Racing series, which continues as one of the best-selling franchises in the EA Sports lineup today.

Another game starring Andretti, called Andretti Racing, was released for the Sega Saturn, PlayStation in 1996, and for PC in 1997.', 'Sega Mega Drive', 'N/A', 'No', 'Racing', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/28034-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('25042', 'Mario Party 10', 'B.Y.O.B. (Bring Your Own Bowser)
 
Bowser crashes the latest Mario Party, the first installment of the series on the Wii U console. In the new Bowser Party mini-games, play as Bowser himself and face off against up to four others playing as Mario and friends. Control Bowser using the buttons, motion controls and touch screen of the Wii U GamePad controller in different ways, and wreak havoc as Bowser in each mini-game while the other players strive to survive.

FEATURES:

-Grab the GamePad and play as Bowser for the first time in the series. In Bowser Party mini-games, one player gets to be the fire-breathing Bowser as he tries to burn, bonk or blast other players away. Up to four players use Wii Remote controllers to cooperate and survive as they confront the Bowser player, who is using the Wii U GamePad. Its four against one, and being a party pooper has never been so much fun!

-Control Bowser in a variety of ways with the Wii U GamePad. In Bowsers Bad Breath, for example, the Bowser player moves the GamePad around to aim and shoot fireballs at the other players while they attempt to dodge them.

-Colors and textures pop off the screen as the Mario Party series leaps into high definition for the first time.

-Enjoy new mini-games in classic Mario Party style with up to four players.*

Also Available
Mario Party 10: Special Edition Bowser', 'Nintendo Wii U', '4+', 'No', 'Action', '03/20/2015', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/25042-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('31277', 'Super Mario Maker', 'Super Mario Maker lets people’s imaginations run wild. For the first time ever, friends can have fun playing through levels they create for one another. The Wii U GamePad controller makes it so easy for anyone to create levels; it may feel like simply sketching out ideas on paper. Players can enjoy a seemingly endless supply of inventive Mario levels from players around the world.', 'Nintendo Wii U', '1', 'No', 'Platform', '09/11/2015', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/31277-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('48905', 'Mario Kart DS', 'Frantic speed and item-tossing mayhem await on these racetracks!

Race along with Mario and his friends in five single-player modes and over 30 courses. Knock out the competition with your driving skills as you rocket-start the race, use drifting and turbos at critical points, and deploy crazy items to gain an advantage.

Get ready for total shell-tossing mayhem! Choose one of 12 Nintendo characters as you race through challenging tracks that become even more so with deployable items at your disposal. Enlist in the Grand Prix for the trophy prize in eight different cups. Start a Time Trial, and try to best your fastest time with your own ghost. Play against a computer-controller kart in VS mode for a quick race. Try out some fun kart minigames like Balloon Battle and Shine Runners in Battle mode. Or try clearing some Missions to practice your technique in becoming the ultimate Mario Kart racer!

Virtual Console
This classic game is part of the Virtual Console service, which brings you great games created for consoles such as NES™, Super NES™ and Game Boy™ Advance. We hope youll enjoy the new features (including off-TV play) that have been added to this title.', 'Nintendo Wii U', '1', 'No', 'Racing', '04/23/2015', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/48905-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('48912', 'Mario & Luigi: Superstar Saga', 'An adventure so big, youll need both Bros.!

Prepare for an epic journey beyond the borders of the Mushroom Kingdom as Mario™ and Luigi™ team up for a hilarious, action-filled adventure!

During a normal day of royal duties, Princess Peach meets with the ambassador of the neighboring Beanbean Kingdom. However, an act of amnesty turns into an act of theft! The evil Cackletta and her awful assistant, Fawful, disguised themselves for the chance to steal Princess Peachs voice. Before the Mushroom Kingdom can fall under Princess Peachs despair, Mario and Luigi will need to work together as they cross the border to the lands of Beanbean Kingdom. Take a break from the adventure and play a quick game in Mario Bros. mode, featuring an enhanced version of the original NES game. With all this awesome action, youll have hours of fun!

Virtual Console
This classic game is part of the Virtual Console service, which brings you great games created for consoles such as NES™, Super NES™ and Game Boy™ Advance. We hope youll enjoy the new features (including off-TV play) that have been added to this title.', 'Nintendo Wii U', '1', 'No', 'Role-Playing', '04/03/2014', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/48912-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('48981', 'New Super Mario Bros.', 'Jump into a Mario™ adventure or play some minigames!

Princess Peach™ has been kidnapped by Bowser Jr.™! Run, jump, and stomp your way across eight worlds as you smash through your foes and save the day! Take a break from the adventure to play minigames in four fun-filled categories!

When lightning suddenly strikes Peachs castle, Mario goes to investigate the disturbance. But Bowser Jr. seizes the opportunity to sneak up from behind and grab ahold of Peach! Its up to Mario to save the day! Run, jump, and stomp your way through raging volcanoes, tropical islands, snowcapped peaks, and unimaginable challenges. Grab a Mega Mushroom and grow to incredible proportions, or smash through your foes in a blue Koopa shell. Collect Star Coins to unlock helpful items, backgrounds, and even new paths on the map.

Virtual Console
This classic game is part of the Virtual Console service, which brings you great games created for consoles such as NES™, Super NES™ and Game Boy™ Advance. We hope youll enjoy the new features (including off-TV play) that have been added to this title.', 'Nintendo Wii U', '1', 'No', 'Action', '05/14/2015', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/48981-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('49009', 'Super Mario Bros.', 'Mario™ and Luigi™ star in their first ever Mushroom Kingdom adventure! Find out why Super Mario Bros. is instantly recognizable to millions of people across the globe, and what made it the best-selling game in the world for three decades straight. Jump over obstacles, grab coins, kick shells, and throw fireballs through eight action-packed worlds in this iconic NES classic. Only you and the Mario Bros. can rescue Princess Toadstool from the clutches of the evil Bowser.

Virtual Console
This classic game is part of the Virtual Console service, which brings you great games created for consoles such as NES™, Super NES™ and Game Boy™ Advance. We hope youll enjoy the new features (including off-TV play) that have been added to this title.', 'Nintendo Wii U', '2', 'No', 'Action', '09/19/2013', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/49009-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('266', 'Mario Kart 64', 'Three… Two… One… GO!  The signal light changes and you drop the pedal to the metal.  Take on up to three friends in the split-screen VS games, or race solo in the Mario GP.  Tell your friends to bring it on in the highly competitive Battle mode.  Advanced features allow you to race with your “Ghost”.  The driving data from your best run appears as a transparent character on the screen.  No longer must you simply race against the clock -- you can actually race against yourself!

* Save your hottest Ghost data to a portable N64 Controller Pak!
* Collect multiple power-up items!
* Twenty different courses -- 4 Cups with 4 courses each and 4 special Battle mode courses!
* Everyone’s favorite characters are back and gorgeously rendered, including two new additions, Donkey Kong and Wario!', 'Nintendo 64', '4+', 'No', 'Action', '02/10/1997', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/266-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/266-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('42320', 'Super Mario Odyssey', 'Explore incredible places far from the Mushroom Kingdom as you join Mario and his new ally Cappy on a massive, globe-trotting 3D adventure.

 
Use amazing new abilities—like the power to capture and control objects, animals, and enemies—to collect Power Moons so you can power up the Odyssey airship and save Princess Peach from Bowsers wedding plans!

Thanks to heroic, hat-shaped Cappy, Marios got new moves thatll make you rethink his traditional run-and-jump gameplay—like cap jump, cap throw, and capture. Use captured cohorts such as enemies, objects, and animals to progress through the game and uncover loads of hidden collectibles. And if you feel like playing with a friend, just pass them a Joy-Con™ controller! Player 1 controls Mario while Player 2 controls Cappy. This sandbox-style 3D Mario adventure—the first since 1996s beloved Super Mario 64™ and 2002s Nintendo GameCube™ classic Super Mario Sunshine™—is packed with secrets and surprises, plus exciting new kingdoms to explore.

Explore astonishing new locales like skyscraper-packed New Donk City to your hearts content, and run into familiar friends and foes as you try to save Princess Peach from Bowsers dastardly wedding plans.
Find something interesting? Toss your cap at it and see what happens! There are lots of fun and surprising ways to interact with your surroundings.
Be sure to bring any coins you find to a Crazy Cap store, where you can exchange them for decorative souvenirs for the Odyssey and new outfits for Mario! Some destinations have very exclusive dress codes, after all…
Hand a Joy-Con™ controller to a friend to enjoy simultaneous multiplayer: Player 1 controls Mario while Player 2 controls Marios new ally Cappy.
Use Snapshot Mode to freeze time while playing the game and take screenshots that you can customize using various options and filters. Screenshots can be shared via social media or uploaded to PCs and smart devices* using all of the Nintendo Switch™ systems built-in screenshot tools.', 'Nintendo Switch', '2', 'Yes', 'Action', '10/27/2017', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/42320-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('40138', 'Super Mario War', 'Super Mario War is an open source, cross-platform, platform-adventure video game and level editor. It is unofficially based upon gameplay elements and audiovisual media that are cloned from Nintendos Super Mario series. The game centers on players fighting each other by one player jumping on the other players head, or by making use of items which can be picked up during gameplay.

The gameplay is somewhat simple. In various game modes, players may jump on each others heads to defeat each other or they may use items found in the power-up boxes. The game has a variety of such configurable settings to determine when certain items spawn in the power-up boxes, the way players spawn onscreen, and more.

The game includes a campaign mode based upon an overworld similar to that of Super Mario Bros. 3. However, instead of levels, the player simply fights more of the characters featured in the game although controlled by the CPU player. The player moves onto the next level when the enemy is defeated.', 'PC', '4+', 'No', 'Fighting', '12/16/2006', 'Michael Schaffer, Florian Hufsky', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/40138-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('44046', 'Mario Sports Superstars', 'N/A', 'Nintendo 3DS', '4+', 'No', 'Sports', '03/24/2017', 'Bandai Namco Studios', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/44046-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('7659', 'Mario Strikers Charged', 'Take to the pitch as Mario Strikers Charged arrives with a new roster of features. The follow-up to "Super Mario Strikers" delivers bigger shots, massive hits and the chance to play gamers around the world. Mario Strikers Charged is high-impact, all the time. More captains, more playing fields, more sidekicks: Its crush or be crushed in this wild kickfest.', 'Nintendo Wii', '4+', 'No', 'Sports', '07/30/2007', 'Next Level Game', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/7659-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/7659-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2522', 'Mario Power Tennis', 'Mario Power Tennis features variations of tennis matches consisting of characters, courts, and scenarios based on the Mario series. The range of courts includes the standard three types of tennis court, but consists predominantly of those themed upon games in the Mario series, known as "Gimmick" courts. As well as adopting the style aesthetically, these feature thematic elements that influence how the match will be played on that surface, such as the ghosts in the Luigis Mansion court, which hinder movement when the character comes into physical contact with them.
Although standard tennis is available, variants of the sport can be played which adopt different rules and methods of victory. "Ring Shot" involves the player earning points by hitting the ball through rings of varying sizes, with the number of points dependent on the difficulty of the shot.[9] The player acquires the points whenever a winning shot is made adhering to standard rules; the match is won once the predetermined number of points is equaled or surpassed. A similar mode, "Item Battle", involves the characters using items based on the Mario universe to interfere with each others game and gain an advantage', 'Nintendo GameCube', '4+', 'Yes', 'Sports', '11/08/2004', 'Camelot', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2522-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2522-2.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2236', 'Super Mario Sunshine', 'When Mario arrives on tropical Isle Delfino, the once-pristine island is polluted and plastered with graffiti. Even worse, hes being blamed for the mess! Now instead of enjoying a relaxing vacation, Mario has to clean up the place and track down the real culprit.', 'Nintendo GameCube', '1', 'No', 'Action', '08/25/2002', 'Nintendo EAD', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2236-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2236-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2318', 'Mario Party 7', 'You can play more than 80 new minigames in the most recent Mario-themed party game, Mario Party 7. Mario and pals needed some time off, but they forgot to invite Bowser on their cruise. You can battle against an angry Bowser or up to seven of your friends on a single GameCube system. Mario Party 7 includes a few new characters and brings back microphone support from Mario Party 6.', 'Nintendo GameCube', '4+', 'Yes', 'Action', '11/07/2005', 'Hudson Soft', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2318-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2318-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('140', 'Super Mario Bros.', 'Do you have what it takes to save the Mushroom Princess?  You’ll have to think fast and move even faster to complete this quest!  The Mushroom Princess is being held captive by the evil Koopa tribe of turtles.  It’s up to you to rescue her from the clutches of the Koopa King before time runs out.  But it won’t be easy.  To get to the Princess, you’ll have to climb mountains, cross seas, avoid bottomless pits, fight off turtle soldiers and a host of black magic traps that only a Koopa King can devise.  It’s another non-stop adventure from the Super Mario Bros.!', 'Nintendo Entertainment System (NES)', '2', 'No', 'Action', '09/13/1985', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/140-2.jpg', 'http://thegamesdb.net/banners/boxart/original/front/140-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('169', 'Mario Kart Wii', 'Mario and friends once again jump into the seat of their go-kart machines for the first Wii installment of this popular franchise. New features this year are an online racing mode, new motorbike vehicle types, a special balancing system for new and veteran players, and (in its initial release) a special Mario Kart wheel packaged with the game.', 'Nintendo Wii', '4+', 'No', 'Action', '04/27/2008', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/169-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/169-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('171', 'Super Mario Bros. 2', 'Mario’s back!  Bigger and badder than before!  This time it’s a fierce action-packed battle to free the land of Subcon from the curse of the evil Wart.  It’s up to you, along with Mario, Luigi, Toad and the Princess, to fight your way through bizarre multi-level worlds and find him!  This time you’ve got a brand new kind of power - plucking power - and now anything you find can be a weapon.  But beware!  You’ve never seen creatures like these!  Shyguys and Tweeters!  Ninji and Beezos!  And you’ve never had an adventure like this!  Only cunning and speed can save you now…', 'Nintendo Entertainment System (NES)', '1', 'No', 'Action', '10/09/1988', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/171-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/171-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('1726', 'Super Mario Land', 'Journey with Mario to a land of giant crabs, Koopa Troopas, flying stone heads and hungry sharks!

Travel over land, in the air, and underwater. Mario makes his way through four treacherous worlds on his way to save the Princess!', 'Nintendo Game Boy', '1', 'No', 'Platform', '04/21/1989', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/1726-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/1726-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('7522', 'Mario Tennis: Power Tour', 'Players can test their backhand in this unique role-playing tennis adventure. Train hard at the Royal Tennis Academy to be a champion. Gain experience and improve your skills through lessons and tournaments, and rise to the top of the ranks. Play as Mario, Peach, Waluigi, or Donkey Kong in a slew of wild modes. Advance through the story and unlock even more characters, all with their own power moves. Beat Mario at his own game, then link up with a friend or three for even more frantic fun.', 'Nintendo Game Boy Advance', '1', 'No', 'Sports', '12/05/2005', 'Camelot Software Planning', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/7522-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/7522-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('10605', 'Super Mario 3D Land', 'Super Mario 3D Land is a platform game that has been described by game designer Shigeru Miyamoto as a "3D Mario that plays as a 2D Mario game." As such, Super Mario 3D Land combines the elements of traditional side-scrolling Mario titles, such as linear-based levels, with those of the modern open world Mario titles, such as moving Mario in three dimensions and performing a variety of actions.[6]
Similar to the classic side-scrolling Mario games, the objective of each level is to reach and grab the "Goal Pole" located at the end of the course before the time limit expires. Super Mario 3D Land utilizes a similar health system to those games, in which Mario shrinks upon taking damage from enemies or hazards, and damage while as "Small Mario" results in losing a life.', 'Nintendo 3DS', '1', 'No', 'Platform', '11/13/2011', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/10605-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('12707', 'Paper Mario: Sticker Star', 'On the day of the annual Sticker Fest, Bowser decides to pull a prank and scatters six Royal Stickers across the land. To retrieve these mysterious, magical stickers, which are now stuck onto Bowser and his underlings, Mario sets off on an adventure with Kersti, a sticker fairy, visiting prairies, deserts, forests, snowy mountains and volcanoes around the world.', 'Nintendo 3DS', 'N/A', 'No', 'Role-Playing', '11/11/2012', 'Intelligent Systems', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/12707-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('12733', 'Mario Kart 7', 'The newest installment of the fan-favorite Mario Kart franchise brings Mushroom Kingdom racing fun into glorious 3D. For the first time, drivers explore new competitive kart possibilities, such as soaring through the skies or plunging to the depths of the sea. New courses, strategic new abilities and customizable karts bring the racing excitement to new heights.', 'Nintendo 3DS', '1', 'No', 'Racing', '12/04/2011', 'Retro Studios', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/12733-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('16778', 'Super Mario 64', 'Super Mario 64 (Japanese: スーパーマリオ64 Hepburn: Sūpā Mario Rokujūyon?) is a 1996 platform video game published by Nintendo and developed by its EAD division for the Nintendo 64. Along with Pilotwings 64, it was one of the launch titles for the console.[3] It was released in Japan on June 23, 1996, and later in North America, Europe, and Australia. More than eleven million copies of Super Mario 64 have been sold.[4][5] An enhanced remake called Super Mario 64 DS was released for the Nintendo DS in 2004.

In the game, Mario explores Princess Peachs castle and must rescue her from Bowser. As one of the earlier three-dimensional (3D) platform games, Super Mario 64 is based on open world playability, degrees of freedom through all three axes in space, and relatively large areas which are composed primarily of true 3D polygons as opposed to only two-dimensional (2D) sprites. The game established a new archetype for the 3D genre, much as Super Mario Bros. did for 2D sidescrolling platformers. In the evolution from two dimensions to three, Super Mario 64 places an emphasis on exploration within vast worlds that require the player to complete multiple diverse missions, in addition to the occasional linear obstacle courses as in traditional platform games. While doing so, it still preserves many gameplay elements and characters of earlier Mario games.[6]

The game has left a lasting impression on 3D game design, particularly notable for its use of a dynamic camera system and the implementation of its 360-degree analog control.[6][7][8] The title is acclaimed by many critics and fans as one of the greatest and most revolutionary video games of all time.[9][10][11][12][13][14]', 'Nintendo Wii', 'N/A', 'No', 'N/A', '11/19/2006', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/16778-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('23610', 'Mario Teaches Typing', 'A great typing tutorial that is best described as Mavis Beacon Teaches Typing for kids, Mario Teaches Typing is a full-featured typing program that has something for everyone, although kids with no typing experience will get the most from the program-- while enjoying cute antics of Nintendos popular Mario brothers.', 'PC', '1', 'No', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/23610-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('44856', 'Super Mario Bros. Special', 'Super Mario Bros. Special was developed by Hudson Soft and released in 1986 for the NEC PC-88.

While superficially very similar to the original Super Mario Bros., the game features original new levels and has a screen-by-screen scrolling mechanism. When a player reaches the end of a screen, the screen turns blank and loads the next part of the level. Jumping and dashing physics also differ from the original NES, providing a more challenging experience than Super Mario Bros. Adding difficulty is the fact that the stage time is faster than in the original NES game. Returning was Marios Hammer from Donkey Kong, alongside a variety of past foes from earlier arcade Mario titles, and new exclusive items.

Due to the PC-88 being inferior to that of the NES/Famicom, the graphics and audio differ slightly from the original game as well, although they are closely replicated. Additionally, the game does not include Luigi nor does it contain a multiplayer mode. The Sharp X1 version contains partial scrolling and slightly more colorful graphics, containing green and white colors. While the PC-88 is able to produce eight colors, the Sharp X1 uses dithering to provide additional colors into one pixel. Special only uses half of the PC-88s hardware palette, restricted to only black, red, yellow, and blue, including dithered results with those four colors. Sprites exclude the use of blue to allow transparency in the sprites.

The Warp Zones from the original were changed in such a way that Special has no true Warp Zone. In World 1-2, reaching the area over the pipe instead leads to the single bonus room that could be accessed normally in the stage, but with a pipe that still leads to the overworld, thus to the end of the level. In World 4-2, a room that more resembles a true Warp Zone can be found, however the only pipe it holds does not have any destinations defined, likely due to an oversight by the developers. The pipe can still be entered, but the player will remain stuck there indefinitely, forcing the player to be killed by the timer.', 'PC-88', '2', 'No', 'Platform', '09/12/1986', 'Hudson Soft', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/44856-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('30867', 'Kaettekita Mario Bros.', 'Kaettekita Mario Bros. (Return of Mario Bros.) is revised version of the original 1983 arcade release. A Japanese exclusive for the Famicom Disk System, it was released in 1988 and was only available through the Disk Writer kiosk service where players could erase a game they owned and use that disk to purchase, among others, this title for 400 yen.', 'Famicom Disk System', '2', 'No', 'Action', '11/30/1988', 'Nintendo EAD', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/30867-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('14936', 'Mario Party Advance', 'Its a portable party on your Game Boy Advance! Mario Party Advance takes all the fun of the home console game and puts it in your hands. All-new mini-games and a host of Professor E. Gadds incredible Gaddgets -- unique trinkets, toys, detectors and tricks like the Lip Disguise-o-matic that let you play tricks on your friends, test your compatibility and much more. Discover the 60 mini-games as you play through the single-player game boards. Earn coins as you play the mini-games, and use those coins to unlock Gaddgets you can use with your friends. Use your Gaddgets to take the game into the real world. Place your finger on the Finger X-Ray to see whats hidden inside, or use the Compatibility Meter to see how well you and your friends match up.', 'Nintendo Game Boy Advance', '1', 'No', 'Adventure', '03/28/2005', 'Hudson Soft', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/14936-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('37312', 'Vs. Super Mario Bros.', 'Vs. Super Mario Bros., is nearly a separate game in its own right. This game, one of several made for Nintendos NES-based arcade cabinet, the Nintendo Vs. Unisystem (and its variant, Nintendo Vs. Dualsystem), is based on Super Mario Bros., and has an identical format. This game is harder than the original Super Mario Bros., with fewer warp zones and power-ups, and more enemies. The stages are different; the early stages are subtly different, with small differences like the omission of 1-up mushrooms and other hidden items, narrower platforms and more dangerous enemies, but six later stages are changed entirely. Many of these later, changed stages reappeared in the 1986 game, Super Mario Bros. 2 (Japan).

The plot is the same as the original Super Mario Bros., featuring Mario (or Luigi) setting out on a quest to free Princess Toadstool from the evil Bowser and restore the fallen kingdom of the Mushroom People.', 'Nintendo Entertainment System (NES)', '2', 'No', 'Adventure', '06/14/1986', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/37312-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/37312-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('47049', 'Super Mario 64', 'Virtual console release of Super Mario 64 for the Nintendo Wii U.

The game was originally released in 1996 for the Nintendo 64.

In the game, Mario explores Princess Peachs castle and must rescue her from Bowser. As one of the earlier 3D platform games, Super Mario 64 is based on open world playability, degrees of freedom through all three axes in space, and relatively large areas which are composed primarily of true 3D polygons as opposed to only two-dimensional (2D) sprites. The game established a new archetype for the 3D genre, much as Super Mario Bros. did for 2D sidescrolling platformers. In the evolution from two dimensions to three, Super Mario 64 places an emphasis on exploration within vast worlds that require the player to complete multiple diverse missions, in addition to the occasional linear obstacle courses as in traditional platform games. While doing so, it still preserves many gameplay elements and characters of earlier Mario games,[6] and the same visual style.

The game has left a lasting impression on 3D game design, which featured a dynamic camera system and implemented a 360-degree analog control.The title is acclaimed by many critics and fans as one of the greatest and most revolutionary video games of all time.', 'Nintendo Wii U', '1', 'No', 'Platform', '04/01/2015', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/47049-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2401', 'Mario Party DS', 'Hes captured Mario and his friends in his pursuit of a crystal that the group collected when it fell from the sky, and he doesnt hesitate to shrink them to miniature size to get rid of them and get his hands on the other four crystals. The mini-heroes have to find the crystals before he does, making their way through giant environments filled with enormous creatures. The single-player campaign takes place in five different settings, each of them ending with a boss. As usual, players have to collect coins and stars, at the same time escaping dangers such as Piranha Plants and other classic creatures from the Mario universe.', 'Nintendo DS', 'N/A', 'No', 'Adventure', '11/19/2007', 'Hudson', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2401-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2401-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('7660', 'Mario Super Sluggers', 'Mario Super Sluggers, the sequel to Mario Superstar Baseball, continues the arcade-style gameplay of Mario sports games. Mario and friends are invited to the Baseball Kingdom to play games against each other. When Bowser hears this, he immediately interrupts the party.

There are several game modes to choose from like in the previous game. In Exhibition mode, players play a single game against each other. Players can choose different options such as how many innings to play, if captains can use star powers (each captain has a different star swing and pitch), and toggle error items off and on (error items can be thrown at fielders).

The single-player Challenge mode is different this time around. Instead of choosing a team captain, players start with Mario who must find teammates to take on Bowser Jr. and Bowser. Teammates arent unlocked by playing a game rather they only join the team by clearing certain objectives. Most of the action takes place on areas with an overhead perspective; each area is based around a team captain. Each captain has a special ability to find teammates and coins, which are used to buy items to aid in the quest or in a game against Bowser Jr. or later against Bowser. More coins can be gotten in minigames.

Toy Field mode is slightly different to the one featured in Mario Superstar Baseball. Like in the GameCube game, players take turns batting to get points; a turn is granted to whomever grabs and holds the ball after a certain amount of time has passed. Unlike in the previous game, however, fielders can attack each other to steal the ball away from whomever has it. The batter can also throw items at the fielders to cause them to drop the ball and grant the batter another turn.', 'Nintendo Wii', 'N/A', 'No', 'Sports', '08/25/2008', 'Namco Bandai', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/7660-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/7660-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2526', 'Super Paper Mario', 'Platform-jumping, brick-smashing, goomba-stomping Mario adventures are back!

Mario and Luigi are enjoying a lazy afternoon at their house when they hear the terrible news: Princess Peach has been kidnapped! The two brothers head straight for Bowsers castle to get her back, but Bowser is just as surprised about Peachs kidnapping as they are. At that moment, a strange top-hatted villain warps in and abducts everyone but Mario. The mysterious villain then forces Peach and Bowser to get married, creating a rift of dark energy that threatens to tear the universe apart! Only Mario can save the day...but he cant do it alone.

What at first glance appears to be your classic 2-D adventure ripped straight from the stylized pages of the Paper Mario universe, soon turns into an hysterical 3-D action game possible only on Wii!

Early on, the 2-D side-scrolling game play appears to be reminiscent of New Super Mario Bros. But as soon as Mario learns the ability to flip between dimensions, players will be constantly flipping between 2-D and 3-D to pass perilous pits, find hidden coins and passages, and talk to characters who are visible only in 3-D.

Bottom Line

Super Paper Marios gameplay and smooth controls, plus its innovative 2D-to-3D effect, make for one of the best platformers in several years. Its adventurous anthems seem to have the uncanny ability of pulling players back in a quest for mastery. Its a Mario title anyone can play.

Features

* 2-D...AND 3-D! Run through vibrant 2-D worlds, stomping on enemies and breaking blocks....then, with the press of a button, flip into 3-D! In the 3rd dimension, youll find hidden paths, battle foes, and uncover secrets as you explore the previously invisible depth of the 2-D landscapes!

* Unique Wii controls! Hold the Wii Remote sideways and control the game in classic Super Mario Bros. style! You can shake the Wii Remote to pull off stylish moves and break out of frigid ice and even point directly at the screen to get helpful hints from your sidekick. Not only that, but youll also play as Peach and Bowser, both with their own sets of essential skills.

* Hilarious adventure! When a mysterious villain kidnaps Peach and Bowser and forces them to get married, their union creates a rift of dark energy that threatens to tear the universe apart! Hilarious characters, laugh-out-loud plot twists, and unforgettable dimensions await as Mario makes his way through eight worlds, each more memorable than the last.', 'Nintendo Wii', '1', 'No', 'Action', '04/09/2007', 'Intelligent Systems', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2526-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2526-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('168', 'Mario Party 8', 'All new features/boards! Mario Party for Wii also includes dozens of new mini-games, six new party boards and many new game modes. In a series first, players can transform their characters into many forms, such as player-smashing boulders and coin-sucking vampires. Mario Party Wii includes "extra large" mini games like Star Carnival Bowling and Table Menace. One to four players can play Mario Party, each with a Wii Remote.', 'Nintendo Wii', '4+', 'No', 'Puzzle', '05/29/2008', 'Hudson', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/168-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/168-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2317', 'Mario Party 6', 'Mario Party 6 offers a new batch of games that require both your fingers and your voice. In this installment in the Mario Party series, you can use the included microphone controller to talk your way to victory. More than 80 minigames are included. You can play as Mario, Bowser, or other characters from the Mushroom Kingdom. New characters appear on the board depending on what time of day it is. The game supports up to four players.', 'Nintendo GameCube', '4+', 'No', 'Action', '12/06/2004', 'Hudson Soft', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2317-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2317-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('4495', 'Mario Lemieux Hockey', 'This hockey game contains an exhibition, tournament, shootout, and a fight mode. It also has 16 teams that represent the cities of real NHL teams but the game does not contain either real NHL teams or players.', 'Sega Genesis', 'N/A', 'No', 'Sports', '01/01/1991', 'Alpine Studios', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/4495-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/4495-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2831', 'Mario is Missing!', 'Dont look now, but Bowsers back, and this time hes in your world! But where is that mastermind of reptilian trouble doing his dastardly deeds? And what has he done with Mario? Welcome to Mario is Missing! Take a trek with your travel agent, Luigi, and see the world! Track down troublesome turtles. Figure out where in the world you are, and what on earth happened to Mario. If your grasp of geography is good enough, youll get the goods, stomp the hoods, and grab Mario out of Bowsers ghastly guest house. A learning adventure that the whole family can share! This is no Koopa-stomping mayhem. Its a fun way to learn about our world!', 'Super Nintendo (SNES)', '1', 'No', 'Puzzle', '06/01/1993', 'Software Creations', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2831-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2831-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('9320', 'Mario Party 9', 'Grab your friends and family and captain the crew to victory!

The party is back and bigger than ever in the Mario Party™ 9 game for Wii, featuring all-new ways to play! For the first time in the franchise, boss battles crash the party and challenge players to compete to defeat a common enemy. In addition, players now travel across stages together in a vehicle towards a common goal - overcoming obstacles, battling bosses, and collecting Mini Stars stolen by Bowser™ and his minions. Featuring 80 new minigames, adventurous new stages, and all-new ways to play that blend cooperative and competitive action for up to four players*, Mario Party 9 is the perfect way to get the party started.

-For the first time in the Mario Party franchise, each stage culminates in a Boss Battle. Collectively, players must combine their strength to defeat classic foes such as Bowser™ and King Boo while still playing competitively to boost their own individual scores.

-In another first for the series, players ride across stages together in special vehicles. Players take turns as Captain of the vehicle by hitting Dice Blocks to move the party forward, hoping to land on lucky spaces. The vehicles also help to streamline game play and keep everyone involved in the action.

-Unique Captain Events on each stage give players a new way to change the shape of the game.

-In Mario Party 9, each themed stage has a clear destination point but with multiple paths along the way, so no two games will play the same. From Toad Road to Boo’s Horror Castle, players will encounter a wide variety of familiar Mario franchise elements in new environments that can be enjoyed solo or with friends.

-Includes 80 outrageous new minigames that find players making pizzas, escaping haunted mansions, and racing snowmobiles.

-No time to play through an entire stage? New minigame modes let players enjoy the action in smaller chunks of time. They can hone their skills at any minigame in Free Play mode or try the Extras mode that includes Goomba Bowling and the puzzle-based Castle Clearout.

-Every time they play, players can earn Party Points that are used to unlock special items and features.

* Additional accessories are required for multiplayer game play and are sold separately.', 'Nintendo Wii', '4+', 'No', 'Adventure', '03/11/2012', 'Nd CUBE CO., Ltd.', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/9320-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('7514', 'Mario Golf: Advance Tour', 'Grab your clubs and start down the road to golfing perfection in this role-playing golf adventure! Chat up the locals at golf clinics, hone your skills in challenges like Club Slots and Go-Go Gates, and try to become the champ of all the country clubs! The Mushroom Kingdom residents take on only the very best.', 'Nintendo Game Boy Advance', '4+', 'No', 'Role-Playing', '06/22/2004', 'Camelot Software Planning', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/7514-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/7514-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('18153', 'Super Mario 3D World', 'Four Players + Three Dimensions = Super Mario Fun

Work together with your friends or compete for the crown in the first multiplayer 3D Mario game for the Wii U console. In the Super Mario™ 3D World game, players can choose to play as Mario, Luigi, Princess Peach, or Toad.

Features:

* Each character has unique abilities and play styles. For example, Princess Peach glides over gaps, while Luigi has his trademark extra-high jump.

* The new cat transformation allows players to run on all fours, pounce on enemies, attack in midair, or use their claws to scamper up walls and goal poles.

* Explore colorful 3D environments filled with obstacles and contraptions like transparent pipes and vertical conveyor belts, which add new puzzle elements.

* Use the Wii U GamePad Controllers touch screen to search for hidden blocks and freeze enemies in place.

* Unlock Luigi Bros., the Luigi version of the classic Mario Bros. arcade game.', 'Nintendo Wii U', '4+', 'Yes', 'Action', '11/22/2013', 'Nintendo', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/18153-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/18153-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('10750', 'Mario Kart Arcade GP', 'Mario Kart Arcade GP (マリオカート アーケードグランプリ Mario Kāto Ākēdo Guran Puri?) is an arcade-only iteration of Nintendos Mario Kart series, developed by Namco. Designed for the Triforce arcade board (also used for F-Zero AX), players can race as one of eleven characters on twenty-four tracks. On certain machines, for an additional fee, a players data can be saved on a magnetic card which can be inserted into the machine again later to retain unlocked items and records. Nintendos limited role of development was mainly isolated to ensuring that it was a worthy title for the established franchise.

This games arcade cabinet houses a camera that will take a photograph of the players face. The photo can be customized and then will be displayed above the players character during multiplayer races.

The game is noted for being the first Mario Kart to feature playable crossover characters: Namcos Pac-Man, Ms. Pac-Man and Blinky. The games sequel also featured Mametchi, a character from the Tamagotchi games. The third installment included Don from the Taiko no Tatsujin franchise.', 'Arcade', '2', 'No', 'Racing', '10/12/2005', 'Namco', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/10750-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('20487', 'Mario Golf: World Tour', 'Luigi and his Mushroom Kingdom neighbors are teeing up once again in Mario Golf: World Tour. The Nintendo 3DS game includes both simple controls and a deeper experience for golf fans, plus courses that range from traditional to those inspired by the Mushroom Kingdom', 'Nintendo 3DS', '4+', 'No', 'Sports', '05/02/2014', 'Camelot Software Planning', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/20487-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            