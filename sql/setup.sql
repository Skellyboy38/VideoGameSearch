
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
    admin TINYINT(1),
    blocked TINYINT(1),
    PRIMARY KEY (user_id)
);

INSERT INTO videogames.user (user_id, password, admin, blocked)
VALUES('admin', 'admin', 1, 0);

CREATE TABLE videogames.purchase_history (
    user_id VARCHAR(30),
    amount VARCHAR(30),
    date DATETIME,
    FOREIGN KEY (user_id)
        REFERENCES user(user_id)
);

CREATE TABLE videogames.login_history (
    user_id VARCHAR(30),
    date DATETIME,
    FOREIGN KEY (user_id)
        REFERENCES user(user_id)
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
    display TINYINT(1),
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

CREATE TABLE videogames.favorites (
    user_id VARCHAR(30),
    game_id VARCHAR(30),
    PRIMARY KEY (user_id, game_id),
    FOREIGN KEY (user_id)
        REFERENCES user(user_id),
    FOREIGN KEY (game_id)
        REFERENCES game(game_id)
);

        
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('7047', 'Sonic Riders', 'The Sonic series takes to the track in the combat racing game, Sonic Riders. Dr. Eggman has challenged Sonic and friends to race in his World Grand Prix, and you can enter the event and try to unravel his mysterious plot. The races happen on floating boards and include tricks, fighting, and racing. You can customize your character with upgraded equipment as you race down 13 different tracks through a handful of game modes. You can also challenge three of your friends to multiplayer races.', 'Nintendo GameCube', '4+', 'Yes', 'Racing', '02/21/2006', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/7047-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/7047-1.jpg', 'N/A', 'N/A', '114.3', '35', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('12450', 'Sonic Generations', 'The game features levels derived from 20 years of Sonic history, spreading across three eras: Classic, Dreamcast and Modern, which are played as either Classic Sonic or Modern Sonic. Classic Sonics levels are strictly two dimensional side scrolling stages, using classic moves like the Spin Attack and Spin Dash, while Modern Sonics levels follow the 2D/3D style gameplay of Sonic Unleashed and Sonic Colors, featuring techniques such as boosting and homing attacks. As well as classic power-ups such as Invincibility and Speed Shoes, certain levels have unique power-ups, such as skateboards in City Escape and Wisp powers in Planet Wisp.', 'Sony Playstation 3', '1', 'No', 'Action', '11/01/2011', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/12450-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '145.31', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('16654', 'Sonic Adventure', 'Sonic Adventure (ソニックアドベンチャー Sonikku Adobenchā?) is a platform video game developed by Sonic Team. It was originally released for the Dreamcast as a launch title in Japan in 1998, and worldwide in 1999. It was the first game in the main Sonic the Hedgehog series since Sonic & Knuckles in 1994.

After series villain Doctor Eggman releases an ancient monster, protagonist Sonic the Hedgehog vows to stop him collecting the Chaos Emeralds. The other playable characters are flying fox Miles "Tails" Prower, love interest Amy Rose, Knuckles the Echidna, who plans to reassemble the Master Emerald, angler Big the Cat, and E-102 Gamma, one of Eggmans robots.

Sonic Adventure received generally positive reviews for its graphics, gameplay, and soundtrack. It became the best-selling Dreamcast game. A sequel, Sonic Adventure 2, was released in 2001 for the Dreamcast. Enhanced ports of the game were released in 2003 for the Nintendo GameCube and Microsoft Windows. It has since been re-released as a downloadable game for Xbox 360 via Xbox Live Arcade, and PlayStation 3 via PlayStation Network in 2010. It is also included in the Dreamcast Collection for the Xbox 360.', 'Microsoft Xbox 360', 'N/A', 'No', 'Adventure', '09/15/2010', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/16654-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '99.59', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('25263', 'Sonic & Tails', 'Join Sonic & Tails in another adventure to defeat the evil Dr. Robotnik. Its a robot smashing, tail burning good time. Oh and BTW this gamegear game is the japanese version, the equivalent English version is Sonic the Hedgehog Chaos', 'Sega Game Gear', '2', 'No', 'Platform', '11/23/1993', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/25263-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '121.19', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('25213', 'Sonic Blast', 'Fully rendered graphics thrust Sonic into an exciting 3D playing environment. An all new gameplay perspective puts you in the middle of Sonics 3D adventure! The evil genius Robotnik is after the Chaos Emeralds and its up to Sonic to stop him. Rescue the innocent Flickies before Robotnik turns them into part of his evil plan!', 'Sega Game Gear', 'N/A', 'No', 'Platform', '01/01/1996', 'Aspect', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/25213-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '47.33', '79', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('27257', 'Sonic Crackers', 'Sonic Crackers is an early prototype build of the game Knuckles Chaotix, incorporating many of the elements that would appear in the final game. Its name comes from a peculiar, and clearly quickly made, ASCII-art title screen. Sonic Crackers is thought to be an engine test, composed of various different game engines, which are swapped out using RAM coding.

The game features Sonic and Tails, who, in the main demonstration of its link to Knuckles Chaotix, are held together by rings that they carry and that are joined by an elastic force. Also, Sonic can pick up Tails and throw him upwards, to make it easier to reach higher platforms. The stages and music are also similar to those in Chaotix. There are no sound effects at all during gameplay. There are no badniks to be found, however there are spikes, and you lose rings when hitting them (even though you have none).', 'Sega Genesis', '2', 'No', 'Platform', '04/20/2009', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/27257-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '90.19', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('32112', 'Sonic Jam', 'Everyones favorite hedgehog is at it again and hes jammin! Join Sonic on his action-packed adventure. Its high-speed, non-stop fun as the best of Sonic merges. Play classic levels of Sonic 2, 3 and Sonic & Knuckles.', 'Game.com', '1', 'No', 'Platform', '01/01/1998', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/32112-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '129.59', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('46074', 'Sonic Mania', 'Experience the ultimate celebration of past and future in Sonic Mania, an all-new 2D Sonic adventure running at a crisp 60FPS with stunning HD retro-style graphics. Multiple playable characters give you the ability to go explosively fast as Sonic, soar as Tails, or power through tough obstacles with Knuckles brute strength. You can re-live the Sonic of the past with an exciting new twist on classic zones while fighting against new bosses and Dr. Eggmans evil robot army. Go head-to-head with players in Competition Mode or play in Co-Op Mode with a friend. Sonic Mania is developed by Christian Whitehead, Headcannon, and PagodaWest Games in collaboration with Sonic Team. Welcome to Sonic Mania!', 'PC', 'N/A', 'No', 'N/A', '08/29/2017', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/46074-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '116.53', '36', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('48993', 'Sonic Mania', 'Experience the ultimate celebration of past and future in Sonic Mania, an all-new 2D Sonic adventure running at a crisp 60FPS with stunning HD retro-style graphics. Multiple playable characters give you the ability to go explosively fast as Sonic, soar as Tails, or power through tough obstacles with Knuckles brute strength. You can re-live the Sonic of the past with an exciting new twist on classic zones while fighting against new bosses and Dr. Eggmans evil robot army. Go head-to-head with players in Competition Mode or play in Co-Op Mode with a friend. Sonic Mania is developed by Christian Whitehead, Headcannon, and PagodaWest Games in collaboration with Sonic Team. Welcome to Sonic Mania!', 'Microsoft Xbox One', 'N/A', 'No', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/48993-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '25.79', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('39259', 'Sonic Adventure', 'This downloadable game brings the classic Dreamcast game to the PlayStation 3.

The hedgehog with an attitude makes his triumphant return to the world of videogames in Sonic Adventure. Sonic has been catapulted into the third dimension with style. Racing at supersonic speeds through nearly 50 gorgeous, fully 3D levels, Sonic will have to adapt to the new challenges and dangers invented by the evil Dr. Robotnik. Sonic knows when hes outmatched, though, so hes recruited five friends including Amy Rose, Tails, and Knuckles to help him put a stop to Robotniks evil scheme. Each playable character features different abilities, playing through levels differently and seeing the story evolve from their own perspectives.', 'Sony Playstation 3', '1', 'No', 'Platform', '09/21/2010', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/39259-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '100.16', '44', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('47644', 'Sonic Forces', 'In the works at Sonic Team, Sonic Forces is the first Sonic the Hedgehog game planned for next-generation consoles.', 'Microsoft Xbox One', '1', 'No', 'Platform', '12/31/2017', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '83.18', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('129', 'Sonic CD', 'Sonics gameplay remains similar to that of Sonic the Hedgehog but with the addition of the Spin Dash and the Super Peel Out, which lets him zoom into a quick speed from a standing point.The main innovation of this chapter in the Sonic series is the manner in which the player can travel to four different versions of each zone, each a different time period of the same location: Present, Past, Good Future and Bad Future. This is accomplished by speed posts scattered around the level, bearing the labels "Past", and "Future". After running through one of these posts, the player has to run at top speed for a few seconds without stopping, to travel into the respective time period. Because these teleports are relative, there are no "Past" signs in the Past, and no "Future" signs in the Future; that is, warping to the past in the future returns the player to the "present" time and vice versa.', 'Sega CD', '1', 'No', 'Adventure', '09/23/1993', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/129-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/129-1.jpg', 'N/A', 'N/A', '143.02', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('8888', 'Sonic Generations', 'Set across three defining eras from 20 years of Sonic the Hedgehog video game history, the instantly recognisable environments of Sonic Generations have been re-built in stunning HD and are now playable in both classic side scrolling 2D from 1991, as well as modern 3D style found in Sonics most recent adventures. Each incarnation of Sonic in Sonic Generations comes complete with his trademark special move, Spin Dash and Spin Attack for Classic Sonic, and Homing Attack and Sonic Boost for Modern Sonic. An innovative new interactive menu system allows for complete immersion in Sonics universe with favourite characters and hidden treasures gradually being revealed throughout the game.', 'Microsoft Xbox 360', 'N/A', 'No', 'N/A', '11/01/2011', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/8888-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/8888-1.jpg', 'N/A', 'N/A', '63.52', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('12779', 'Sonic Generations', 'Set across three defining eras from 20 years of Sonic the Hedgehog video game history, the instantly recognisable environments of Sonic Generations have been re-built in stunning HD and are now playable in both classic side scrolling 2D from 1991, as well as modern 3D style found in Sonics most recent adventures. Each incarnation of Sonic in Sonic Generations comes complete with his trademark special move, Spin Dash and Spin Attack for Classic Sonic, and Homing Attack and Sonic Boost for Modern Sonic. An innovative new interactive menu system allows for complete immersion in Sonics universe with favourite characters and hidden treasures gradually being revealed throughout the game.', 'Nintendo 3DS', 'N/A', 'No', 'N/A', '11/22/2011', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/12779-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '115.52', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('11175', 'Sonic Jam', 'You get all four Hedgehog hits - on one blistering CD! Original Sonic The Hedgehog. Sonic 2. Sonic 3... Plus Sonic & Knuckles, the game that transforms Sonic 1, 2 and Sonic 3 into all new adventures! And if thats not enough to satisfy your need for fun, explore the completely new, fully interactive 3D Sonic Museum.', 'Sega Saturn', '2', 'No', 'Platform', '07/31/1997', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/11175-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/11175-1.jpg', 'N/A', 'N/A', '108.42', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('16637', 'Sonic Unleashed', 'Gameplay in Sonic Unleashed focuses on two modes of platforming play: fast-paced levels that take place during daytime, showcasing Sonics trademark speed as seen in previous games in the series, and slower, night-time levels, during which Sonics Werehog form emerges, and gameplay switches to an action-based, brawler style of play, in which Sonic battles Gaia enemies', 'Sony Playstation 2', '1', 'No', 'Action', '11/18/2008', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/16637-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '103.2', '84', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('16649', 'Sonic CD', 'Sonic the Hedgehog CD (ソニック・ザ・ヘッジホッグCD Sonikku za Hejjihoggu Shī Dī?), or Sonic CD (ソニックCD Sonikku Shī Dī?), is a platform video game developed by Sonic Team and published by Sega originally for the Sega/Mega-CD in 1993. It is the first game in the Sonic series to make use of the CD-ROM format, featuring high quality audio and full motion video. Development began in Japan around the same time as Sonic the Hedgehog 2 in the United States. Originally, the games had many similarities, but over time became vastly different projects.[3]

The story of Sonic CD follows Sonic the Hedgehog as he utilizes time travel to save Amy Rose and Little Planet from Doctor Eggman and Metal Sonic. The game features the debut appearances of Amy Rose and Metal Sonic, both of whom have gone on to become recurring characters in the Sonic series. Time travel is a key aspect to both the story and gameplay, with nearly every stage containing four different variations (one for each time period) featuring alternate stage layouts, music, and graphics.

Sonic CD received critical acclaim, being considered both one of the best platform and Sega/Mega-CD games of all-time.[4][5][6] It was ported to Microsoft Windows 9x as part of the Sega PC brand in 1996, and to both the PlayStation 2 and GameCube as part of the Sonic Gems Collection in 2005. An enhanced port of the game was also released for Xbox Live Arcade, PlayStation Network, iOS, Android, Windows, Windows Phone, and Ouya.', 'Microsoft Xbox 360', 'N/A', 'No', 'N/A', '12/14/2011', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/16649-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '84.55', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('17072', 'Sonic Spinball', 'Dr. Eggman (AKA Dr. Robotnik) is once again turning the animals of Mobius into robots using his monstrous contraption, the Veg-O-Fortress.

Only Sonic can penetrate the Pinball Defense System to free the animals, retrieve the Chaos Emeralds, and put a stop to Dr. Eggmans fiendish plans!', 'PC', '1', 'No', 'N/A', '09/13/2010', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/17072-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '122.44', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('18037', 'Sonic Rivals', 'The game begins with Doctor Eggman turning Tails, Amy Rose, Rouge, and the Master Emerald into cards with his new device. Sonic and Knuckles arrive on the scene, and find out what has happened. Knuckles, bent on saving the Master Emerald, tells Sonic that teamwork is out of the question and that he needs to get to Eggman first. Sonic snickers and says that he likes a good challenge.

Meanwhile, Shadow the Hedgehog receives a distress signal from Eggman. Suddenly, a mysterious hedgehog named Silver appears from the future. Silver is then pursued by Shadow. When they encounter each other, Silver tells Shadow he needs to get to Eggman, first. After numerous conflicts, it is revealed that Dr. Eggman is in fact Eggman Nega and that the real Doctor Eggman is captured into a card prior to the story. After one final battle with Sonic, Knuckles, Shadow and Silver, Nega is defeated, everyone is reverted to their original forms, and Silver returns to the future with Eggman Nega who is trapped inside a card.', 'Sony Playstation Portable', '2', 'No', 'Action', '12/24/2006', 'Backbone Entertainment', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/18037-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '14.46', '98', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('19763', 'Sonic Riders', 'Sonic Riders (ソニックライダーズ Sonikku Raidāzu?) is a 2006 video game spin-off developed by Sonic Team, with production assistance by Now Production, for the PlayStation 2, GameCube, Xbox and Microsoft Windows. It is the fourth racing game in the Sonic the Hedgehog series, preceded by Sonic Drift, Sonic Drift 2 and Sonic R.

The game was released to start off the 15th anniversary of the release of the Sonic the Hedgehog series. For a short while, the Microsoft Xbox version of the game was released with a free Sonic X DVD.[citation needed] This game introduces five new playable characters, the Babylon Rogues and the E-10000 series. A sequel to Sonic Riders, entitled Sonic Riders: Zero Gravity, was released in 2008 for the Wii and PlayStation 2, followed by the Kinect-required game Sonic Free Riders for the Xbox 360 in 2010. This was the last Sonic the Hedgehog game for the GameCube and Microsoft Xbox.', 'Sony Playstation 2', 'N/A', 'No', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/19763-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '45.3', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('29394', 'Sonic Eraser', 'Sonic Eraser (ソニックイレイザー) is a 1991 puzzle game that was downloadable for players that had Sega Game Toshokan, an online game downloading service for the Sega Mega Drive in Japan. Because the service is now long defunct, the game was unknown to much of the Sonic community for a time. The game was later released in 2004 on Sega of Japans website, and it received more widespread attention as it was noticed by English-speaking Sonic fans this time around.

The game was made available on Segas B-Club download service in Japan. It nearly received a re-release, as evidence by the fact that data referring to it was found in Sonic Gems Collection.', 'Sega Mega Drive', '1', 'No', 'Puzzle', '11/03/1991', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/29394-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/29394-1.jpg', 'N/A', 'N/A', '119.24', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('27780', 'Sonic Boom', 'N/A', 'Amstrad CPC', 'N/A', 'No', 'Action', '01/01/1990', 'Activision', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/27780-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '59.23', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('31091', 'Sonic Compilation', 'Sonic Compilation (released in North America as Sonic Classics 3 in 1) is a video game compilation released for the Sega Mega Drive containing three previously released Sonic titles: Sonic the Hedgehog, Sonic the Hedgehog 2, and Dr. Robotniks Mean Bean Machine. It was released for the Mega Drive in July 1995, and rebranded in North America for the Genesis in 1997, making it the last Sonic the Hedgehog series game to be released for said console.

Sonic Compilation was the first collection of multiple Sonic games on one cartridge. In some locations, it was bundled with the Mega Drive console during its later years.

The three games appear in exactly the same form as in their original release.', 'Sega Mega Drive', '1', 'No', 'Platform', '07/01/1995', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/31091-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '83.69', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('8232', 'Sonic Spike', 'The action sizzles in Sonic Spike, on the front line of the worlds most brutal volleyball game. Blast the ball over the net -- bump, spike, dig, jump, and even quick-fake a return. Orbital lobs soar to the sun; earth-pounding spikes vibrate the ground. Score ... or eat sand! Select and create your own teams from 24 athletes pulled from six nations. Pit gals against guys in a battle of the sexes, or fight the competition of the century with Japan, Australia, Brazil, USA or USSR.', 'TurboGrafx 16', '2', 'No', 'Sports', '07/27/1990', 'IGS', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/8232-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '134.79', '98', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('20943', 'Sonic & Knuckles + Sonic the Hedgehog', 'Sonic & Knuckles is locked-on to the original Sonic the Hedgehog or Sonic Compilation via Lock-On Technology, the result is a deceptive "No Way!" screen. However, by pressing the A, B and C buttons together players can access Special Stage levels, commonly known as the "Blue Sphere" levels. Levels can be accessed by inputting a twelve digit code, every number combination a different variation of a Special Stage level.', 'Sega Mega Drive', '1', 'No', 'Platform', '10/18/1994', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/20943-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '41.44', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('46991', 'Sonic Extreme', 'The game was unreleased and in development for the Microsoft Xbox.

It has a very similar gameplay concept to the more recent Sonic Riders series.

It was being developed by a small company named Vision Scape and some believe that after SEGA cancelled the game, they stole the idea for their own.', 'Microsoft Xbox', 'N/A', 'No', 'Sports', 'N/A', 'Vision Scape', 'N/A', 'http://thegamesdb.net/banners/', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '49.32', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('2527', 'Sonic Heroes', 'Sonic & the gang, are back in the latest game, SONIC HEROES. Coming out on the Gamecube & for the first time on Playstation 2, Xbox And PC! Sonic Heroes has a twist to the gameplay, you choose a team of 3 characters. With different strengths. There are 4 teams: TEAM SONIC ~ Sonic, Tails & Knuckles TEAM DARK ~ Shadow, Rouge & E-123 Omega TEAM CHAOTIX ~ Espio, Vector, & Charmy Bee TEAM ROSE ~ Amy, Big, & Cream with her Chao sidekick Cheese. There are 4 modes, Story mode, Challenge mode, the Tutorial modes & the new & improved battle mode for multiplayer fun, and there are plenty of secrets to unlock.', 'PC', 'N/A', 'No', 'Platform', '11/17/2004', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/2527-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '70.22', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('924', 'Sonic Unleashed', 'Gameplay in Sonic Unleashed focuses on two modes of platforming play: fast-paced levels that take place during daytime, showcasing Sonics trademark speed as seen in previous games in the series, and slower, night-time levels, during which Sonics Werehog form emerges, and gameplay switches to an action-based, brawler style of play, in which Sonic battles Gaia enemies', 'Sony Playstation 3', 'N/A', 'No', 'N/A', '11/18/2008', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/924-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '138.64', '73', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('63', 'Sonic Riders', 'The games got a quite a few modes of play, a few of which support up to two people. Theres a story mode, though there isnt much of a story. Its vaguely comprehensible plot points involve Eggman setting up an air-board tournament for Sonic, Tails, Knuckles, and his various cartoonish enemies. The winner gets a bunch of Chaos Emeralds, which unlocks long lost Babylon. Since hes a super villain, it makes sense that Eggman eventually steals all the Chaos Emeralds after the story modes fifth race, prompting a sixth race amongst Babylons ruins. In addition to the story for Sonic and friends, theres a separate one for his enemies, though the tracks are quite similar. Theres also Free Race, Time Attack, and World Grand Prix modes, a Tag mode, and Race and Battle stage variations of a Survival mode.', 'PC', '4+', 'No', 'Racing', '11/17/2006', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/63-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '139.04', '20', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('3943', 'Sonic Unleashed', 'Gameplay in Sonic Unleashed focuses on two modes of platforming play: fast-paced levels that take place during daytime, showcasing Sonics trademark speed as seen in previous games in the series, and slower, night-time levels, during which Sonics Werehog form emerges, and gameplay switches to an action-based, brawler style of play, in which Sonic battles Gaia enemies', 'Nintendo Wii', '1', 'No', 'Action', '11/18/2008', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3943-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3943-1.jpg', 'N/A', 'N/A', '40.77', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('26760', 'Sonic Drift', 'The evil Dr. Eggman has stolen the chaos emeralds and you have to win them back in a racing tournament. In Sonic Drift, you can play as Sonic, Tails, Amy, or Robotnik.', 'Sega Game Gear', '2', 'No', 'Racing', '03/18/1994', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/26760-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '133.22', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('3013', 'Sonic Blast', 'The world famous blue hedgehog is back!

Sonic, Knuckles and their world are fully rendered! The evil genius Robotnik has stolen the Chaos Emeralds and its up to Sonic and Knuckles to stop him. Luckily, Sonic has new moves and other special power-ups to defeat the evil genius!

- Play as Sonic or Knuckles as you race through 14 levels in search of hidden power-ups.
- Rendered graphics push Game Gear gameplay to the limits!
- Use Sonics new Boost Blast to defeat the evil genius!', 'Sega Master System', '1', 'No', 'Platform', '12/01/1997', 'Aspect', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3013-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3013-1.jpg', 'N/A', 'N/A', '100.22', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('4624', 'Sonic Classics', 'Sonic Classics compiles three games from the Sonic The Hedgehog series onto one cartridge. They are: Sonic the Hedgehog, Sonic the Hedgehog 2, Dr. Robotniks Mean Bean Machine

Each of the three games control the same as their stand-alone versions. The games are selected from a menu, however only one game can be played at once. Also, even though Sonic The Hedgehog 2 is on this cartridge, it is not possible for this game to lock-on to Sonic And Knuckles to create Knuckles the Echidna.', 'Sega Genesis', 'N/A', 'No', 'Action', '01/01/1997', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/4624-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/4624-1.jpg', 'N/A', 'N/A', '54.84', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('9819', 'Sonic Heroes', 'Sonic & the gang, are back in the latest game, SONIC HEROES. Coming out on the Gamecube & for the first time on Playstation 2, Xbox And PC! Sonic Heroes has a twist to the gameplay, you choose a team of 3 characters. With different strengths. There are 4 teams: TEAM SONIC ~ Sonic, Tails & Knuckles TEAM DARK ~ Shadow, Rouge & E-123 Omega TEAM CHAOTIX ~ Espio, Vector, & Charmy Bee TEAM ROSE ~ Amy, Big, & Cream with her Chao sidekick Cheese. There are 4 modes, Story mode, Challenge mode, the Tutorial modes & the new & improved battle mode for multiplayer fun, and there are plenty of secrets to unlock.', 'Sony Playstation 2', 'N/A', 'No', 'Platform', '01/24/2004', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/9819-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/9819-1.jpg', 'N/A', 'N/A', '88.72', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('14981', 'Sonic Championship', 'Sonic the Fighters, known as Sonic Championship on arcade versions in North America and Europe, is a fighting game developed by Sega AM2 for Segas Model 2 arcade system. The game, which allows players to fight using characters from the Sonic the Hedgehog series, was released in arcades in Japan in May 1996 and North America in June 1996. The game was included in the compilation disc Sonic Gems Collection for PlayStation 2 and Nintendo GameCube in 2005. A HD port for Xbox Live Arcade and PlayStation Network was released in November 2012.', 'Arcade', '2', 'No', 'Fighting', '01/01/1996', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/14981-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '76.59', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('27256', 'Sonic Crackers', 'Sonic Crackers is an early prototype build of the game Knuckles Chaotix, incorporating many of the elements that would appear in the final game. Its name comes from a peculiar, and clearly quickly made, ASCII-art title screen. Sonic Crackers is thought to be an engine test, composed of various different game engines, which are swapped out using RAM coding.

The game features Sonic and Tails, who, in the main demonstration of its link to Knuckles Chaotix, are held together by rings that they carry and that are joined by an elastic force. Also, Sonic can pick up Tails and throw him upwards, to make it easier to reach higher platforms. The stages and music are also similar to those in Chaotix. There are no sound effects at all during gameplay. There are no badniks to be found, however there are spikes, and you lose rings when hitting them (even though you have none).', 'Sega Mega Drive', 'N/A', 'No', 'Platform', '04/20/2009', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/27256-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '22.5', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('29593', 'Sonic Spinball', 'Dr. Robotnik has assumed control of Mt. Mobius and turned it into a mechanical base. Utilizing energy produced by the magma flowing under the volcano, this new monstrosity (the Veg-O-Fortress) has the power to transform helpless animals into robot slaves at an astounding rate. Sonic the Hedgehog and Tails fly onto the scene to mount an aerial assault, but Sonic is knocked off the wings of Tails airplane by a blast from the fortress. He falls into the water, but is rescued and taken to the subterranean levels of the Veg-O-Fortress. The fortress must be destroyed from the inside-out, and the only way to make that happen is to trigger an eruption in the volcano its built on. Sonic knows this can be done by removing the Chaos Emeralds that keep the volcano stable. Robotnik, however, is also aware of the fragile relationship that exists between the Emeralds and the mountain, and hes set up an elaborate Pinball Defense System to make sure the precious jewels dont go anywhere.', 'Sega Mega Drive', '1', 'No', 'Action', '11/23/1993', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/29593-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '133.45', '23', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('46073', 'Sonic Mania', 'The Ultimate Celebration of Past and Future

Experience the ultimate celebration of past and future in Sonic Mania, an all-new 2D Sonic adventure running at a crisp 60FPS with stunning HD retro-style graphics. Multiple playable characters give you the ability to go explosively fast as Sonic, soar as Tails, or power through tough obstacles with Knuckles’ brute strength. You can re-live the Sonic of the past with an exciting new twist on classic zones while fighting against new bosses and Dr. Eggman’s evil robot army. Go head to-head with players in Competition Mode or play in Co-Op Mode with a friend. Sonic Mania was developed by Christian Whitehead, Headcannon, and PagodaWest Games in collaboration with Sonic Team. Welcome to Sonic Mania!', 'Nintendo Switch', '2', 'Yes', 'Action', '08/15/2017', 'Christan Whitehead', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/46073-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '17.12', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('48992', 'Sonic Mania', 'Experience the ultimate celebration of past and future in Sonic Mania, an all-new 2D Sonic adventure running at a crisp 60FPS with stunning HD retro-style graphics. Multiple playable characters give you the ability to go explosively fast as Sonic, soar as Tails, or power through tough obstacles with Knuckles brute strength. You can re-live the Sonic of the past with an exciting new twist on classic zones while fighting against new bosses and Dr. Eggmans evil robot army. Go head-to-head with players in Competition Mode or play in Co-Op Mode with a friend. Sonic Mania is developed by Christian Whitehead, Headcannon, and PagodaWest Games in collaboration with Sonic Team. Welcome to Sonic Mania!', 'Sony Playstation 4', 'N/A', 'No', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/48992-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '81.31', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('42403', 'Sonic CD', 'It’s time to usher the past into the future in this enhanced recreation of Sonic CD! Sonic travels to the distant shores of Never Lake for the once-a-year appearance of Little Planet - a mysterious world where past, present, and future collide through the power of the Time Stones that lie hidden within it. Sonic arrives only to find the once beautiful world imprisoned beneath a twisted metallic shell. His arch-nemesis, Dr. Eggman, has come for the Time Stones and with them, will soon have the power to control time itself! In order to put an end to Dr. Eggman’s nefarious schemes, Sonic must use the power of Little Planet to travel through time; breaking Dr. Eggman’s hold over the future by destroying his machines in the past and recovering the missing Time Stones! Featuring 16:9 widescreen and both the US and Japanese soundtracks, experience the adventure through time that introduced the world to Amy Rose and Eggman’s most evil creation, Metal Sonic.', 'Android', '1', 'No', 'N/A', 'N/A', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/42403-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '136.37', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('43254', 'Sonic Boom', 'Sonic Boom (ソニック・ブーム Sonikku Būmu) is a 1987 vertical scrolling shooter arcade game created by Sega.

The player, piloting an airplane fighter, begins with a single gun (as with most scrolling shooters) and can power up by collecting power ups dropped by certain colored enemies. The power ups can add a ship to the fighters left and right sides and increase shot power and range. They can also drop bombs, which can wipe out all weak enemies on screen and do massive damage to stronger enemies.', 'Arcade', 'N/A', 'No', 'Shooter', '01/01/1987', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/43254-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '18.9', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('47643', 'Sonic Forces', 'N/A', 'Sony Playstation 4', '1', 'No', 'Platform', 'N/A', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/47643-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '127.51', '96', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('2303', 'Sonic Colors', 'Sonic Colors, titled Sonic Colours in some markets is a platform game in the Sonic the Hedgehog series. It was first announced on May 26, 2010, in a press release by Sega for Italy, and it included a teaser trailer. The game was released for the Wii and Nintendo DS on November 11, 2010, in Australia, November 12, 2010, in Europe, November 16, 2010, in North America[4] and November 18, 2010, in Japan.', 'Nintendo Wii', '2', 'No', 'Action', '11/16/2010', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/2303-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '82.58', '62', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('2346', 'Sonic Advance', 'SONIC IS BACK TO SAVE THE WORLD!

The evil Dr. Eggman is at it again, with a brand new scheme to trip up Sonic and his pals. Maneuver your way through obstacles, puzzles and traps to collect the Chao Emeralds and defeat the vile Dr. Eggman before it’s too late!

-Play as Sonic, Knuckles, Tails, or Amy
-Link up to 4 players on one Game Pak
-Zip through levels filled with puzzles and traps at sonic speed
-Exchange chao between the Game Boy Advance and the Sonic Adventure’ 2: Battle game on the Nintendo GameCube’', 'Nintendo Game Boy Advance', '4+', 'No', 'Action', '02/03/2002', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2346-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2346-1.png', 'N/A', 'N/A', '42.2', '23', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('2416', 'Sonic Adventure', 'Centuries ago, the planet was bestowed the seven Chaos Emeralds. These emeralds were a source of unlimited power, and consequently it did not take long before wars broke out over who would control the Chaos Emeralds. There was also a Master Emerald, which was the controller of the Chaos Emeralds and could either negate or amplify the Chaos Emeralds power. One of the chao living near the shrine of the Emeralds accidentally made contact with the holy water in the shrine and mutated to become a peaceful creature that could use the power of water called Chaos and became the guardian of the rest of the chaos there. Later on, a tribe of echidnas, led by Pachamac, angered Chaos by attempting to steal the Chaos Emeralds, ruining the sanctuary it was protecting and attempted a mass massacre on the chao living there. They were all but completely destroyed within a single night and Chaos, in his fury, used the negative power of the Chaos Emeralds to transform into Perfect Chaos and slaughtered all the echidnas. Pachamacs daughter, Tikal, had pleaded with Pachamac but he refused to listen to her. Tikal then prayed to the Master Emerald after Perfect Chaos had left to destroy the entire world to seal herself with Chaos inside the Master Emerald.', 'Sega Dreamcast', '2', 'Yes', 'Platform', '12/23/1998', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2416-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2416-1.jpg', 'N/A', 'N/A', '53.89', '13', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('8065', 'Sonic Generations', 'The ultimate celebration of 20 Years of Sonic gaming, Sonic Generations delivers the definitive experience for Sonic fans new and old.

Sonic’s universe is thrown into chaos when a mysterious new power comes into force, creating ‘time holes’ which take Sonic and his friends back in time. Whilst there, Sonic runs into some very familiar characters from his past including a younger version of himself! Now they must team up to defeat their enemies, save their friends, and find out who is behind this diabolical deed.', 'PC', '1', 'No', 'Platform', '11/01/2011', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/8065-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '134.94', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('6879', 'Sonic Rush', 'Sonic the Hedgehog has a new partner, Blaze the Cat, in this fast-paced platformer, Sonic Rush. You can play as either Sonic or Blaze as you try to track down powerful Sol emeralds. Sonic Rush displays the level over both screens, allowing for screen-spanning jumps and dives. Some gameplay modes include stylus support as well.', 'Nintendo DS', '2', 'No', 'Action', '11/15/2005', 'Dimps', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/6879-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/6879-1.jpg', 'N/A', 'N/A', '43.13', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('9208', 'Sonic R', 'The worlds most notorious speed demon pushes the 32-bit speed limit into extreme overdrive in a twisting, turning, upside-down-corkscrewing race for the finish line. Compete with 4 different characters-PLUS special "hidden" track smokers-and satisfy your need for speed through 5 blistering cricuits. This wicked band of Mach-maniacs is sporting enough torque to keep you flossing bug guts out of your teeth for days.', 'Sega Saturn', '2', 'No', 'Action', '10/31/1997', 'Travellers Tales', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/9208-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/9208-2.jpg', 'N/A', 'N/A', '90.5', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('16648', 'Sonic CD', 'Sonic the Hedgehog CD (ソニック・ザ・ヘッジホッグCD Sonikku za Hejjihoggu Shī Dī?), or Sonic CD (ソニックCD Sonikku Shī Dī?), is a platform video game developed by Sonic Team and published by Sega originally for the Sega/Mega-CD in 1993. It is the first game in the Sonic series to make use of the CD-ROM format, featuring high quality audio and full motion video. Development began in Japan around the same time as Sonic the Hedgehog 2 in the United States. Originally, the games had many similarities, but over time became vastly different projects.[3]

The story of Sonic CD follows Sonic the Hedgehog as he utilizes time travel to save Amy Rose and Little Planet from Doctor Eggman and Metal Sonic. The game features the debut appearances of Amy Rose and Metal Sonic, both of whom have gone on to become recurring characters in the Sonic series. Time travel is a key aspect to both the story and gameplay, with nearly every stage containing four different variations (one for each time period) featuring alternate stage layouts, music, and graphics.

Sonic CD received critical acclaim, being considered both one of the best platform and Sega/Mega-CD games of all-time.[4][5][6] It was ported to Microsoft Windows 9x as part of the Sega PC brand in 1996, and to both the PlayStation 2 and GameCube as part of the Sonic Gems Collection in 2005. An enhanced port of the game was also released for Xbox Live Arcade, PlayStation Network, iOS, Android, Windows, Windows Phone, and Ouya.', 'Sony Playstation 3', 'N/A', 'No', 'N/A', '12/20/2011', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/16648-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '111.34', '33', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('23869', 'Sonic & Knuckles', 'The story picks up from the ending of Sonic 3 - Dr. Robotniks orbital weapon, the Death Egg, has been badly damaged in the climactic battle between himself and Sonic The Hedgehog. As the satellite falls back to the Floating Island, landing in a volcanic crater, Sonic jumps off, landing in a mushroom filled woodland.
Sonic knows there are many Chaos Emeralds hidden on the island, including the powerful Super Emeralds and the Master Emerald, the secret to the islands levitation powers. Worried that Robotnik may try to harness this power to fuel a repaired Death Egg, he sets off to try and destroy the Death Egg once and for all, keeping an eye out for Knuckles the Echidna, still smarting from his Launch Base defeat.
At Hidden Palace, Sonic finds Knuckles there waiting for him. They fight and Sonic seems to emerge victorious when Knuckles flees from the duel after sensing someone is trying to steal the Master Emerald. Knuckles races ahead closely followed by Sonic to find Robotnik trying to steal the Master Emerald: It had been his plan all along to snatch it while Sonic and Knuckles were too busy dealing with each other. Realizing he had been tricked, Knuckles reacts by attacking Robotnik, which fails when Robotnik electrocutes Knuckles. Sonic tries to intervene but Robotnik stills manages to escape. Knuckles now realizes his mistake and that Sonic is in fact on his side. They join forces and teleport to Sky Sanctuary.
At Sky Sanctuary, Knuckles and Sonic watch the Death Egg launching in the background. Knuckles activates a bridge so Sonic can cross over. Sonic defeats a rebuilt Metal Sonic on the way to the Death Egg, and manages to board it before it leaves the atmosphere. Onboard the Death Egg, Sonic defeats Robotnik and destroys the ship once and for all, only for Robotnik to get away with the Master Emerald in one of his giant robots. If Sonic hasnt collected all seven Chaos Emeralds and/or Super Emeralds, the game ends here, and the ending in which the Master Emerald does not return to Angel Island occurs. After the credits, the player sees a scene with Robotnik still in possession of the Master Emerald.
If all the seven Chaos Emeralds and/or Super Emeralds are collected, Sonic transforms into Super Sonic or Hyper Sonic and chases Robotnik into the Doomsday Zone. After failing to lose him in an asteroid belt, Robotniks machine is destroyed, Sonic and Tails return the Master Emerald, and the Floating Island becomes airborne once again. If the player didnt collect all the Super Emeralds, a scene occurs which shows an Egg Robo emerging from a pile of metal. If all Emeralds are collected, the player sees the Sonic 3 and Knuckles logo featuring Sonic, Tails, and Knuckles.', 'Sega Mega Drive', '2', 'No', 'Platform', '10/18/1994', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/23869-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '113.0', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('28496', 'Sonic Riders', 'Sonic Riders (ソニックライダーズ Sonikku Raidāzu?) is a 2006 video game spin-off developed by Sonic Team, with production assistance by Now Production, for the PlayStation 2, GameCube, Xbox and Microsoft Windows. It is the fourth racing game in the Sonic the Hedgehog series, preceded by Sonic Drift, Sonic Drift 2 and Sonic R.

The game was released to start off the 15th anniversary of the release of the Sonic the Hedgehog series. For a short while, the Microsoft Xbox version of the game was released with a free Sonic X DVD.[citation needed] This game introduces five new playable characters, the Babylon Rogues and the E-10000 series. A sequel to Sonic Riders, entitled Sonic Riders: Zero Gravity, was released in 2008 for the Wii and PlayStation 2, followed by the Kinect-required game Sonic Free Riders for the Xbox 360 in 2010. This was the last Sonic the Hedgehog game for the GameCube and Microsoft Xbox.', 'Microsoft Xbox', 'N/A', 'No', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/28496-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '99.33', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('24076', 'Sonic & Knuckles + Sonic the Hedgehog', 'When Sonic 3 is locked-on to the original Sonic the Hedgehog or Sonic Compilation via Lock-On Technology, the result is a deceptive "No Way!" screen. However, by pressing the A, B and C buttons together players can access Special Stage levels, commonly known as the "Blue Sphere" levels. Levels can be accessed by inputting a twelve digit code, every number combination a different variation of a Special Stage level.', 'Sega Genesis', '1', 'No', 'Platform', '10/18/1994', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/24076-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '41.32', '22', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('33877', 'Sonic Eraser', 'Sonic Eraser (ソニックイレイザー) is a 1991 puzzle game that was downloadable for players that had Sega Game Toshokan, an online game downloading service for the Sega Mega Drive in Japan. Because the service is now long defunct, the game was unknown to much of the Sonic community for a time. The game was later released in 2004 on Sega of Japans website, and it received more widespread attention as it was noticed by English-speaking Sonic fans this time around.', 'Sega Genesis', 'N/A', 'No', 'Puzzle', '01/01/1991', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/33877-1.png', 'http://thegamesdb.net/banners/boxart/original/front/33877-1.png', 'N/A', 'N/A', '27.2', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('47943', 'Sonic Fury', 'Shoot it out with the bad guys in your fighter jet!', 'Action Max', '1', 'No', 'Shooter', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/47943-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '49.04', '80', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('46387', 'Sonic Bash!', 'The idea of this game is that you and another friend of yours select a character (one being Sonic and the other being Tails) and you both battle it out to try to gain as many hits on Eggman. The catch is that Eggman only gets destroyed when the timer runs down to 0 (unless its a draw at that time, then, it will wait for another hit). The player with the most hits at the end of the timer wins! You can also win if the other player dies before the timer runs out (if respawn mode is off). The amount of wins is tallied up on the results screen where you can either retry or change settings.', 'Sega Genesis', '2', 'No', 'Platform', '01/01/2015', 'redhotsonic', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/46387-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '66.83', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('733', 'Sonic & Knuckles', 'Sonic and Knuckles join forces to defeat rotten Dr. Robotniks Death Egg invasion! Play Sonic & Knuckles by itself or Lock-on with other Sonic games. This games revolutionary Lock-on technology adds all new features to your other Sonic games for ultimate replays! Play as Sonic and let loose on Robotnik with amazing new powers. Play as Knuckles and tackle Robotnik and Metal Sonic with bare-fisted attacks, high-speed glides and wall-climbing power! Lock-on with Sonic 3 and transform Floating Island into a huge 34 meg Sonic-epic loaded with new secrets! Play as Sonic, Knuckles, and even Tails - with Game Save! Lock-on with Sonic 2 and play as Knuckles with all his signature moves!', 'Sega Genesis', '2', 'No', 'Action', '10/18/1994', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/733-1.png', 'http://thegamesdb.net/banners/boxart/original/front/733-1.png', 'N/A', 'N/A', '40.67', '26', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('3694', 'Sonic Battle', 'Sonic and pals are gearing up for some brawling action!

Fight as one of nine characters including Sonic, Tails and Shadow!
Knock em dead with special attacks and team-based assaults.
Create and train fighting partner for 2-on-2 battles.
Duke it out with your friends in 4 player battles.', 'Nintendo Game Boy Advance', '4+', 'No', 'Fighting', '01/05/2004', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3694-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3694-1.png', 'N/A', 'N/A', '125.14', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('8480', 'Sonic Unleashed', 'Gameplay in Sonic Unleashed focuses on two modes of platforming play: fast-paced levels that take place during daytime, showcasing Sonics trademark speed as seen in previous games in the series, and slower, night-time levels, during which Sonics Werehog form emerges, and gameplay switches to an action-based, brawler style of play, in which Sonic battles Gaia enemies', 'Microsoft Xbox 360', '1', 'No', 'Action', '11/18/2008', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/8480-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '60.99', '25', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('8048', 'Sonic Heroes', 'Sonic & the gang, are back in the latest game, SONIC HEROES. Coming out on the Gamecube & for the first time on Playstation 2, Xbox And PC! Sonic Heroes has a twist to the gameplay, you choose a team of 3 characters. With different strengths. There are 4 teams: TEAM SONIC ~ Sonic, Tails & Knuckles TEAM DARK ~ Shadow, Rouge & E-123 Omega TEAM CHAOTIX ~ Espio, Vector, & Charmy Bee TEAM ROSE ~ Amy, Big, & Cream with her Chao sidekick Cheese. There are 4 modes, Story mode, Challenge mode, the Tutorial modes & the new & improved battle mode for multiplayer fun, and there are plenty of secrets to unlock.', 'Microsoft Xbox', 'N/A', 'No', 'Platform', '01/27/2004', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/8048-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/8048-1.jpg', 'N/A', 'N/A', '19.32', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('13146', 'Sonic R', 'Originally released for the Sega Saturn, Sonic R is an racing game featuring characters from the Sonic the Hedgehog series.

It has graphics updated from the Saturn release, including more detailed 3D graphics and random weather events.', 'PC', '1', 'No', 'Racing', '10/31/1997', 'Travellers Tales', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/13146-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '96.81', '74', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('10820', 'Sonic CD', 'It’s time to usher the past into the future in this enhanced recreation of Sonic CD!

Sonic travels to the distant shores of Never Lake for the once-a-year appearance of Little Planet - a mysterious world where past, present, and future collide through the power of the Time Stones that lie hidden within it.

Sonic arrives only to find the once beautiful world imprisoned beneath a twisted metallic shell. His arch-nemesis, Dr. Robotnik, has come for the Time Stones and with them, will soon have the power to control time itself!

In order to put an end to Dr. Robotnik’s nefarious schemes, Sonic must use the power of Little Planet to travel through time; breaking Dr. Robotnik’s hold over the future by destroying his machines in the past and recovering the missing Time Stones!

Featuring 16:9 widescreen, achievements, leaderboards and both the US and Japanese soundtracks, experience the adventure through time that introduced the world to Amy the Hedgehog and Robotnik’s most evil creation, Metal Sonic.', 'PC', '1', 'No', 'Platform', '01/19/2012', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/10820-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '12.57', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('11145', 'Sonic Labyrinth', 'Dr. Robotnik has created a world of 3D mazes, into which he has thrown Sonic and added a whole new dimension to his life! Now the Dude with Attitude can spin dash in every direction - collecting keys to access hidden levels and bonus rooms as he never could before. Can you help guide Sonic through the maze and past the all-new clan of evil Bosses to defeat the damnable Doctor?', 'Sega Game Gear', 'N/A', 'No', 'Platform', '01/01/1995', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/11145-2.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '43.98', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('7045', 'Sonic Heroes', 'Sonic & the gang, are back in the latest game, SONIC HEROES. Coming out on the Gamecube & for the first time on Playstation 2, Xbox And PC! Sonic Heroes has a twist to the gameplay, you choose a team of 3 characters. With different strengths. There are 4 teams: TEAM SONIC ~ Sonic, Tails & Knuckles TEAM DARK ~ Shadow, Rouge & E-123 Omega TEAM CHAOTIX ~ Espio, Vector, & Charmy Bee TEAM ROSE ~ Amy, Big, & Cream with her Chao sidekick Cheese. There are 4 modes, Story mode, Challenge mode, the Tutorial modes & the new & improved battle mode for multiplayer fun, and there are plenty of secrets to unlock.', 'Nintendo GameCube', '4+', 'No', 'Platform', '12/30/2003', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/7045-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/7045-1.jpg', 'N/A', 'N/A', '19.84', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('2254', 'Sonic Shuffle', 'Sonic Shuffle (ソニックシャッフル Sonikku Shaffuru?) is a party game developed by Sonic Team and Hudson Soft and published by Sega for the Dreamcast video game console. It was released in 2000 in North America and Japan, and in 2001 in PAL territories. The game is based on the prospect of advancing characters around a board game while playing mini-games in between turns, much in the same vein as Nintendos Mario Party.[1]

Sonic Shuffle is the first Sonic the Hedgehog game in the party genre. The games story centers on Sonic and his friends as they attempt to restore a dream world by gathering the shards of a powerful object dubbed the Master Precioustone. Sonic Shuffle received mixed reviews upon its release.', 'Sega Dreamcast', '4+', 'No', 'Action', '11/13/2000', 'Hudson, Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2254-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2254-1.jpg', 'N/A', 'N/A', '25.73', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('33795', 'Sonic Dash 2: Sonic Boom', 'Sonic Dash is an endless runner platformer video game developed by Hardlight and published by Sega. It was released exclusively on mobile phones, and is the second game in the Sonic the Hedgehog series developed by Hardlight for the platform, the first being the remake of Sonic Jump in 2012. The game was released on March 7, 2013, for iOS, November 26, 2013, for Android, and December 3, 2014, for Windows.[2]

A sequel based on the Sonic Boom franchise, entitled Sonic Dash 2: Sonic Boom, was released on Android devices on July 1, 2015.[3] It was developed by Hardlight, with some assistance from Sumo Digital.', 'Android', 'N/A', 'No', 'N/A', 'N/A', 'SEGA', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/33795-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '19.77', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('39170', 'Sonic & Knuckles + Sonic the Hedgehog 3', 'Dr. Eggmans (AKA Dr. Robotniks) Death Egg was once again blasted by Sonic, crash-landing on the peak of a volcano on the Floating Island.

Dr. Eggman is still at large, and Sonic cant allow him to get his hands on the Master Emerald and repair the Death Egg. Sonic must also keep Knuckles off his back but Knuckles has problems too. As guardian of the Floating Island and all the Emeralds, Knuckles must do his part to keep the island safe. While theyre going the rounds with each other, who will stop Dr. Eggman?', 'Sega Mega Drive', '1', 'Yes', 'Platform', '10/18/1994', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/39170-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '31.71', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('43394', '2 in 1 - Sonic Advance & Sonic Battle', '2 Games in 1: Sonic Advance & Sonic Battle, called Double Pack: Sonic Battle & Sonic Advance in Japan, is a compilation of two Sonic games for the Game Boy Advance. It contains the games Sonic Advance and Sonic Battle. There are no extras, just a menu that lets you select the two games. On emulation websites the European ROM is being labelled as "2 In 1 Sonic Pack Vol 3".', 'Nintendo Game Boy Advance', '1', 'No', 'Fighting', '11/16/2011', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/43394-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/43394-1.jpg', 'N/A', 'N/A', '127.61', '55', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('20945', 'Sonic & Knuckles + Sonic the Hedgehog 3', 'N/A', 'Sega Genesis', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '79.27', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('25216', 'Sonic 2 In 1: Sonic 2 + Sonic Spinball', 'Sonic 2 In 1: Sonic 2 + Sonic Spinball is a Miscellaneous game, developed by Aspect and published by Sega, which was released in Europe in 1995', 'Sega Game Gear', 'N/A', 'No', 'Platform', '01/01/1995', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/25216-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '78.46', '95', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('42342', 'Sonic & Knuckles + Sonic the Hedgehog 2', 'Knuckles in Sonic 2 is the resulting game when Sonic the Hedgehog 2 is locked onto Sonic & Knuckles with its passthrough port. Sonic is replaced by Knuckles and Tails is not playable whatsoever. The title screen features Knuckles also but removes the two player mode and options selections from it. This game is identical to Sonic 2 (aside from a few changes to make it more playable with Knuckles) but with Knuckles now playable instead of Sonic or Tails.

Sega, though adjusting Knuckles physics to match those of Sonic & Knuckles in-game, ran into issues with those same physics in the Sonic the Hedgehog 2 pre-game demos. A fix was created to keep Knuckles jump height consistent with that of the jump height from Sonic & Knuckles but also make the demos function properly. Knuckles jump was modified so that it reached the same height as Sonic would reach in Sonic the Hedgehog 2, but his mid-air mobility was slowed to give the gimped feeling his jumps had in Sonic & Knuckles. This fix corrected most of these issues; however, the mid-air speed cap caused Emerald Hill and Aquatic Ruin Zones demos to be left in a sub par state.', 'Sega Mega Drive', '1', 'No', 'Platform', '10/18/1994', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/42342-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '123.44', '55', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('45909', 'Combo Pack: Sonic Advance + Sonic Pinball Party', 'You can play two portable Sonic games in one bundle with Sonic Advance & Sonic Pinball Party Combo Pack. Sonic Advance is a classic Sonic-style 2D platformer. You can play as one of four characters as you collect Chaos Emeralds and try to thwart the evil Eggman. Sonic Pinball Party is a Sonic-themed pinball game with a wealth of minigames and support for link cable multiplayer.', 'Nintendo Game Boy Advance', 'N/A', 'No', 'Action', '11/16/2005', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/45909-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '48.37', '91', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('45583', 'Sonic Blast Man', 'The player dons real boxing gloves and punches a padded target as on-screen opponents react.', 'Arcade', 'N/A', 'No', 'Fighting', '05/01/1990', 'Taito', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/45583-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '17.6', '13', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('35192', 'Sonic: Chrono Adventure', 'Sonic Chrono Adventure is the last in LakeFeperds series of Sonic fangames made in Sonic Worlds, a engine for Multimedia Fusion 2. It was developed at a time After The Sequel was feature-complete but also waiting for the sound team to finish composing their original soundtrack. Not wanting to exploit them, Lake went with existing songs for this final installment and released it in December 2013.

Sonic is presumably travelling around after taking care of things at Angel Island. In the skies of South Lakes, there are the ruins of the once prosperous Sky Empire, but what caused its downfall? An encounter with a certain giant spherical bird robot drags Sonic through time to find out!.', 'PC', '1', 'No', 'Adventure', 'N/A', 'Sonic Retro', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/35192-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '108.89', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('41384', 'Sonic The Hedgehog', 'N/A', 'Nintendo 3DS', 'N/A', 'No', 'N/A', '12/05/2013', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/41384-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '135.28', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('691', 'Sonic the Hedgehog 3', 'Swing from vines, launch new attacks, survive deadly traps and summon Tails to airlift Sonic out of danger. Discover hidden rooms and passageways in the mega-sized Zones. Transform into Super Sonic and experience the ultimate in speed and ultra-sonic power. Save your progress using the new Game Save Feature.', 'Sega Genesis', '2', 'Yes', 'Adventure', '02/02/1994', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/691-2.jpg', 'http://thegamesdb.net/banners/boxart/original/front/691-2.jpg', 'N/A', 'N/A', '30.26', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('432', 'Sonic Adventure 2', 'After discovering the existence of a secret weapon mentioned in the diary of his grandfather, Gerald Robotnik, Dr. Eggman infiltrates a high-security G.U.N. facility in search of it. This "weapon", a black hedgehog named Shadow who claims that he is the "Ultimate Life Form", offers to help Eggman take over the world, telling him to rendezvous with him at the abandoned Space Colony ARK with more Chaos Emeralds. Shadow proceeds in stealing one of the emeralds, and G.U.N. officials mistake him for Sonic. Sonic is apprehended shortly after he confronts Shadow, who demonstrates to Sonic the Chaos Control technique.', 'Sega Dreamcast', '2', 'No', 'Platform', '06/19/2001', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/432-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/432-1.jpg', 'N/A', 'N/A', '48.39', '95', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('2580', 'Sonic Blast Man', 'You take on the role of Sonic Blast Man, a superhero, in this side-scrolling shooter, fighting against various forms of evil. While you have the typical punch, jump, and kick moves, the Sonic Blast Man also has two special power moves: Dynamite Punch and Screw Bomb. You travel through five different stages and fight enemies ranging from local ruffians to robots and even aliens from outer space.', 'Super Nintendo (SNES)', '1', 'No', 'Action', '01/01/1992', 'Taito Corporation', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2580-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2580-1.jpg', 'N/A', 'N/A', '114.64', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('5755', 'Sonic the Hedgehog 2', 'The worlds fastest hedgehog is back, racing through all-new Zones, with more tricks, traps and action than ever before!', 'Sega Game Gear', '1', 'No', 'Action', '11/17/1992', 'Aspect', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/5755-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/5755-1.jpg', 'N/A', 'N/A', '62.34', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('3014', 'Sonic the Hedgehog Chaos', 'Dr. Robotniks stolen the red Chaos Emerald, and its up to Sonic The Hedgehog to get it back! As Sonic or "Tails" the two-tailed fox, youll zip through the Zones, using your quick moves and quicker thinking to collect rings and evade Robotniks latest batch of badniks!', 'Sega Master System', '1', 'No', 'Platform', '10/25/1993', 'Aspect', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3014-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3014-1.jpg', 'N/A', 'N/A', '48.22', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('7504', 'Sonic the Hedgehog 2', 'The gameplay of Sonic the Hedgehog 2 builds upon the basic set-up of the original Sonic the Hedgehog game. The player finishes each level, generally moving from left to right, within a time limit of 10 minutes.  Along the way, rings are collected and Badniks are defeated. Star posts serve as checkpoints, where if the player was to lose a life then he or she would return to one.  When the player has collected at least 50 rings, star posts can be run past for an optional Special Stage.  At the end of the last act of each zone (with the exception of Sky Chase Zone which does not have a boss), Sonic confronts Dr. Robotnik.', 'Sega Mega Drive', '2', 'Yes', 'Action', '11/20/1992', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/7504-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/7504-1.jpg', 'N/A', 'N/A', '149.29', '54', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('11421', 'Sonic Rush Adventure', 'Sonic returns to the DS with all the classic 2D dual screen action of "Sonic Rush," as well as a new high-seas adventure where he clashes with ruthless pirates. As Sonic, set off from Windmill Village to explore seven islands for action-packed adventures spread across a large map. As you venture, youll uncover valuable items and materials that will help Tails build new ships so that Sonic can track down the villainous pirates in a variety of ways.', 'Nintendo DS', '2', 'No', 'Action', '09/18/2007', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/11421-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/11421-1.jpg', 'N/A', 'N/A', '133.7', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('16647', 'Sonic the Fighters', 'N/A', 'Microsoft Xbox 360', 'N/A', 'No', 'N/A', '11/28/2012', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/16647-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '93.51', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('17070', 'Sonic 3 & Knuckles', 'Dr. Eggmans (AKA Dr. Robotniks) Death Egg was once again blasted by Sonic, crash-landing on the peak of a volcano on the Floating Island.

Dr. Eggman is still at large, and Sonic cant allow him to get his hands on the Master Emerald and repair the Death Egg. Sonic must also keep Knuckles off his back but Knuckles has problems too. As guardian of the Floating Island and all the Emeralds, Knuckles must do his part to keep the island safe. While theyre going the rounds with each other, who will stop Dr. Eggman?', 'PC', '1', 'No', 'N/A', '01/26/2011', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/17070-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '86.29', '20', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('28096', 'Sonic 3D Blast', 'Doctor Robotnik discovered that some strange birds, called Flickies, live on an island in an alternate dimension. He learned that they can travel anywhere using large rings, so he decided to exploit them by turning them into robots to help him search for the Chaos Emeralds. One day, Sonic visited Flickies Island and saw what Robotnik had done to them. He decided to free the Flickies and stop Robotnik from finding the Emeralds.', 'Sega Mega Drive', '1', 'No', 'Adventure', '11/30/1996', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/28096-1.png', 'http://thegamesdb.net/banners/boxart/original/front/28096-1.jpg', 'N/A', 'N/A', '119.24', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('28344', 'Sonic Riders: Zero Gravity', 'The second in Sonics racing series takes the hedgehog into never-before seen worlds with edge-of-your-seat racing intensity and all-new gravity controlling moves. In Sonic Riders: Zero Gravity, Sonic takes on to futuristic-inspired tracks and travels as far as outer space to push the limits of speed even further. Two new unique gravity control moves will allow players to outrace opponents while navigating walls, drops, and hairpin turns. Innovative new tracks take full advantage of Sonics new moves and offer heart-stopping racing action enhanced by high-intensity speed boosts. Sonic Riders: Zero Gravity also features a series of high-speed vehicles that evolve through the gamplay to offer the ultimate unrivaled racing machine.', 'Sony Playstation 2', '1', 'No', 'Racing', '01/08/2008', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/28344-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/28344-1.jpg', 'N/A', 'N/A', '112.37', '91', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('26691', 'Sonic the Hedgehog Megamix', 'South Island. A magnificent land; one that is not bound by restrictions such as time.

15 years have passed since Sonic the Hedgehogs first plight against the nefarious Dr. Eggman (originally known as Dr. Ivo Robotnik in English localisations). Ever since, the two sides have clashed nonstop in a variety of settings, with the eventual outcome always being Sonics victory. Both sides have gained both new allies and new enemies; some helpful, others... not so much. Naturally, throughout this time, Sonic has learned a few new techniques, which he uses to further stifle Eggmans plans of world domination. And so, the world is safe - but always just out of Eggmans grasp.

Some say history repeats itself. In this case, the statement is proven true, as Eggman returns to South Island, in hopes that he can obtain the lands powerful Chaos Emeralds, and finally put forth a solid step in conquering the planet. As he arrives on the island, he brings with him a single Chaos Emerald - one that had been missing, and had upset the natural balance of the island for decades beforehand. The others were trapped in an alternate dimension; one which only very few could enter, and from which even fewer returned.

Of course, Eggman isnt very good at keeping his plans secret (a big reason why theyre foiled so easily). As a result, Sonic hears of this, and readies his travel back to South Island. With him, he brings two allies: one being Mighty the Armadillo, a longtime friend of his (though they had not spoken in quite some time); and the other being Shadow the Hedgehog who, after finally getting over his angst (at least for the moment), felt like teaching Eggman a thing or two about trying the same thing twice. And besides that, he had never seen South Island before; he had heard things about it, certainly, but never saw it for himself. So, he figured, why not?

And so, the three begin their trek of South Island, each taking their own unique abilities with them, and going their separate ways, each in search of the remaining Chaos Emeralds, and of Eggman, in hopes that once he is defeated, he will finally abandon his plans of world domination. But, then again, thats not very likely to happen.

We can all dream, I suppose.', 'Sega Genesis', '2', 'No', 'Platform', '08/13/2008', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/26691-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '112.65', '57', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('31094', 'Sonic 3D: Flickies Island', 'Sonic 3D: Flickies Island, also known as Sonic 3D Blast in North America, is both the final Sonic the Hedgehog title released for the Sega Mega Drive and the first on the Sega Saturn. Played on an isometric field, the mechanics of the game echo the previous core installments of the series, though the perspective and alternative objectives make it a unique experience in the Sonic catalog. While conceived and assisted by Sonic Team, the majority of development was done by UK-based game studio Travellers Tales, who would go on to collaborate once more on the franchise with Sonic R.

The game would not be released in Japan until the end of the Saturns life cycle, being the third-to-last first party title for the system, released on the same day as Sonic Adventure International. The Mega Drive version of the game would remain unseen in the land of the rising sun until its inclusion in the compilation title Sonic Mega Collection.', 'Sega Mega Drive', '1', 'No', 'Platform', '11/05/1996', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/31094-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '24.73', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('47642', 'Sonic Forces Bonus Edition', 'Join the Uprising

From the team that brought you Sonic Colors and Generations, comes the next exciting title in the Sonic franchise, Sonic Forces. Experience fast-paced action as Modern Sonic, thrilling platforming as Classic Sonic, and utilize powerful new gadgets as your own custom Hero Character. Help Sonic fight back to reclaim the world from Dr. Eggman and a powerful, mysterious new villain.

Features:

Three types of gameplay: Fast paced action as Modern Sonic, thrilling platforming as Classic Sonic, and utilize powerful gadgets as your own custom Hero Character
Fight against a brand new mysterious, powerful enemy
Featuring an all-star cast of well-known Sonic franchise heroes and villains', 'Nintendo Switch', '1', 'No', 'Platform', 'N/A', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/47642-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '72.79', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('2284', 'Sonic 3D Blast', 'Doctor Robotnik discovered that some strange birds, called Flickies, live on an island in an alternate dimension. He learned that they can travel anywhere using large rings, so he decided to exploit them by turning them into robots to help him search for the Chaos Emeralds. One day, Sonic visited Flickies Island and saw what Robotnik had done to them. He decided to free the Flickies and stop Robotnik from finding the Emeralds.', 'Sega Genesis', '1', 'No', 'Adventure', '11/30/1996', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2284-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2284-2.jpg', 'N/A', 'N/A', '26.61', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('3016', 'Sonic the Hedgehog', 'Bust the video game speed barrier wide open with Sonic The Hedgehog. Blaze by in a blur using the Super Sonic Spin Attack. Plummet down tunnels and spin through space. Bounce around til youre dizzy in a pinball machine. Youve never seen anything like it!', 'Sega Master System', '1', 'No', 'Adventure', '06/23/1991', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3016-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3016-1.jpg', 'N/A', 'N/A', '131.5', '31', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('3693', 'Sonic Advance 3', 'JOIN THE QUEST TO DEFEAT THE EVIL DR. EGGMAN!

*Team up with any one of 5 different characters
*Pull off different combinations of attack moves
*Experience changes in game play depending on a players partner selection
*Multiplayer option allows up to 4 players (Game Link)', 'Nintendo Game Boy Advance', '4+', 'No', 'Action', '06/07/2004', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3693-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3693-1.png', 'N/A', 'N/A', '133.33', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('7044', 'Sonic Gems Collection', 'N/A', 'Nintendo GameCube', '2', 'Yes', 'Action', '08/16/2005', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/7044-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/7044-1.jpg', 'N/A', 'N/A', '54.37', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('16644', 'Sonic the Hedgehog 2', 'Sonic the Hedgehog 2 (Japanese: ソニック・ザ・ヘッジホッグ2ツー Hepburn: Sonikku za Hejjihoggu Tsū?) is a platform video game developed by Sonic Team, with assistance from Sega Technical Institute, and published by Sega for the Sega Genesis console. It was released worldwide in November 1992. The game is the second main entry in the Sonic the Hedgehog series, and the first to feature Miles "Tails" Prower, a flying two-tailed fox. He and protagonist Sonic the Hedgehog must stop the series antagonist Dr. Ivo Robotnik from stealing the Chaos Emeralds in order to power his space station, called the Death Egg.

Development of the game began in November 1991, two months later than originally intended, because Sega of America felt that it was too soon for a sequel. Both American and Japanese Sonic Team staff contributed to development; art director Tim Skelly designed the appearance of the games new 3D special stages, based on an earlier tech demo created by Yuji Naka. The staff increased the speed of Sonic the Hedgehog 2 in comparison to its predecessor. As with the original game, the soundtrack was composed by Masato Nakamura.

Sonic the Hedgehog 2 was a critical and commercial success. It has sold over six million copies, making it the second-best-selling Genesis game behind the original Sonic the Hedgehog. It has since been released in several compilations and downloads for various platforms, which were also generally positively received. A remastered version was released on iOS and Android devices in December 2013, including new features such as Boss Rush and Time Attack modes, and the Hidden Palace Zone, which was scrapped from the original 1992 release. Two sequels, Sonic the Hedgehog 3 and Sonic & Knuckles, were released in 1994.', 'Sony Playstation 3', 'N/A', 'No', 'N/A', '04/19/2011', 'N/A', 'N/A', 'http://thegamesdb.net/banners/', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '99.26', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('16651', 'Sonic Adventure 2', 'Sonic Adventure 2 is a 3D Platformer game, developed by Sonic Team and published by Sega, which was released in 2012.', 'Sony Playstation 3', 'N/A', 'No', 'Platform', '10/02/2012', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/16651-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '39.63', '50', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('18931', 'Sonic Classic Collection', 'Sonic Classic Collection is a video game compilation for the Nintendo DS developed by The Creative Assembly Australia, under supervision by Sega Australia and Sega of Europe.[3] It is a collection of:

Sonic The Hedgehog
Sonic the Hedgehog 2
Sonic the Hedgehog 3
Sonic & Knuckles (With Sonic 3 and Knuckles, and Knuckles in Sonic 2)
This compilation was officially announced on December 2, 2009 by Sega of America and was released March 2, 2010, although news of this compilation first broke when it was classified by the Australian Governments OFLC.[4] It features two extra lock-on modes from the originals, which allows the player to play as Knuckles in Sonic 2 and to play the complete version of Sonic 3 (titled "Knuckles in Sonic 3" as opposed to the original "Sonic 3 & Knuckles" title).[5] The games receive the addition of a save option; while players can "save anywhere" as billed, they must restart the act in which they saved - they are, however, allowed to keep their score and Chaos Emeralds from when they saved, as well as any extra lives and continues earned. The collection also includes a gallery of images.[6]

It was originally supposed to also include Sonic Spinball, Dr. Robotniks Mean Bean Machine, and Sonic 3D Blast but none of those three games made it into the final product.[7]

The game was met with mixed to positive reactions from critics, receiving a 70 out of 100 on Metacritic. Praise was directed at the quality of the games included, but was criticized for its lack of a multiplayer mode and how the artwork included was the only extras included.', 'Nintendo DS', '1', 'No', 'Action', '03/03/2010', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/18931-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '80.82', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('20164', 'Sonic Mega Collection Plus', 'Compilation of classic games with blue hedgehog Sonic. It includes Mega Drive/Genesis classics like Sonic the Hedgehog, Sonic the Hedgehog 2, Sonic the Hedgehog 3, Sonic 3 & Knuckles, Sonic & Knuckles, Knuckles in Sonic 2, Sonic 3D Blast, Dr. Robotniks Mean Bean Machine, six Game Gear games and non-Sonic games.', 'Microsoft Xbox', 'N/A', 'No', 'Platform', 'N/A', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/20164-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '62.8', '78', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('50027', 'Sonic Mania Collectors Edition', 'Deluxe "SEGA Mega Drive" style Collectors Box, 12" Classic Sonic Statue featuring SEGA Mega Drive Base, Metallic Collectors Card plus Sonic Mania Download Code (digital game code), SEGA Cartridge Cast with Golden Ring', 'Sony Playstation 4', 'N/A', 'No', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/50027-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '71.44', '0', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('49847', 'Sonic the Hedgehog 2', 'Sonic the Hedgehog 2 was one of the games adapted for release in arcades for both the Mega-Tech and Mega Play hardware.

The Mega Play version has a number of differences from the Mega Drive game but less than the Sonic 1 Mega Play version did. Cheat codes cannot be used as the Options menu is missing. The two player mode selection is present and accessible by inserting two credits to play (one for each player) and pressing the 2P start button. The mode behaves slightly differently, presenting the continue screen after either player wins a zone and prompting the two players to insert credits and try again. In the 1-player mode, neither 50,000 points nor 100 rings awards the player with an extra life. Instead, the player is awarded a single 1-up at 30,000 points in order to make the game more difficult for an arcade experience. In the single-player game, 1-up monitors are replaced with 10 ring monitors, and 1-up monitors will not come up on the random monitors in 2-player mode. All Zones are present, unlike in the Mega Play version of Sonic 1. Special Stages are also missing and when passing a checkpoint no circle of stars will appear. Although no emeralds can be collected you will automatically receive the good ending when completing the game. There is also no high score table. In the 1-player mode, the time counter on the HUD has been removed completely, but it is still present for both participants in the 2-player mode.', 'Arcade', '2', 'No', 'Platform', '10/01/1993', 'Sonic Team', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/49847-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '22.5', '74', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('35191', 'Sonic: Before the Sequel', 'Sonic Before the Sequel (abbreviated Sonic BTS) is a fan game created by LakeFeperd that is meant to explain the events that may have taken place between Sonic the Hedgehog 1 and Sonic the Hedgehog 2. In it, the player plays as Sonic and Tails, alternating between the duo through numerous zones as Sonic goes to stop Dr. Eggman from launching the Death Egg, with Tails trying to keep up and eventually meet and team up with Sonic. An update was released during SAGE 2012, adding improved graphics, an original soundtrack made by Falk, KgZ, Andy Tunstall & Funk Fiction, and a bonus boss if you reach the good ending. A sequel, Sonic After the Sequel, and an interequel, Sonic Before the Sequel Aftermath (which has now formed into another fangame by LakeFeperd called Sonic Chrono Adventure), were released as well.', 'PC', '1', 'No', 'Action', '08/05/2012', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/35191-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '60.59', '98', '1');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount, display) 
VALUES('40417', 'Sonic the Hedgehog 2', 'One of the greatest adventures of all time re-mastered for mobile devices!
Speed back in time and discover the game that first united Sonic the Hedgehog with his amazing flying sidekick Miles “Tails” Prower. Run through high speed levels packed with enemies and hazards as you zoom along loop de loops in your mission to destroy the devious Dr. Eggman. This definitive version has been fully built from the ground up for mobile devices, featuring re-mastered graphics and audio, and all new game content.', 'Android', '2', 'No', 'Platform', '12/12/2013', 'Sega', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/40417-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', '105.84', '0', '1');

            