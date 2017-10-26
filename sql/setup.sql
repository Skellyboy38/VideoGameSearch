
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
    game_name VARCHAR(30),
    game_description VARCHAR(250),
    console VARCHAR(30),
    num_players VARCHAR(30),
    coop VARCHAR(30),
    genre VARCHAR(30),
    release_date VARCHAR(30),
    developer VARCHAR(30),
    publisher VARCHAR(30),
    front_box_art VARCHAR(100),
    back_box_art VARCHAR(100),
    logo VARCHAR(30),
    developer_logo VARCHAR(30),
    price VARCHAR(30),
    discount VARCHAR(30),
    PRIMARY KEY (game_id)
);

CREATE TABLE videogames.comments (
    comment_id VARCHAR(30),
    user_id VARCHAR(30),
    game_id VARCHAR(30),
    comment_date VARCHAR(30),
    comment_details VARCHAR(30),
    ratings VARCHAR(30),
    PRIMARY KEY (comment_id),
    FOREIGN KEY (user_id)
        REFERENCES user(user_id),
    FOREIGN KEY (game_id)
        REFERENCES game(game_id)
);

        
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('7047', 'Sonic Riders', 'N/A', 'Nintendo GameCube', 'N/A', 'N/A', 'Racing', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/7047-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/7047-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('12450', 'Sonic Generations', 'N/A', 'Sony Playstation 3', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/12450-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('16654', 'Sonic Adventure', 'N/A', 'Microsoft Xbox 360', 'N/A', 'N/A', 'Adventure', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/16654-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('25263', 'Sonic & Tails', 'N/A', 'Sega Game Gear', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/25263-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('25213', 'Sonic Blast', 'N/A', 'Sega Game Gear', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/25213-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('27257', 'Sonic Crackers', 'N/A', 'Sega Genesis', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/27257-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('32112', 'Sonic Jam', 'N/A', 'Game.com', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/32112-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('46074', 'Sonic Mania', 'N/A', 'PC', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/46074-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('48993', 'Sonic Mania', 'N/A', 'Microsoft Xbox One', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/48993-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('39259', 'Sonic Adventure', 'N/A', 'Sony Playstation 3', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/39259-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('47644', 'Sonic Forces', 'N/A', 'Microsoft Xbox One', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('129', 'Sonic CD', 'N/A', 'Sega CD', 'N/A', 'N/A', 'Adventure', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/129-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/129-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('8888', 'Sonic Generations', 'N/A', 'Microsoft Xbox 360', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/8888-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/8888-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('12779', 'Sonic Generations', 'N/A', 'Nintendo 3DS', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/12779-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('11175', 'Sonic Jam', 'N/A', 'Sega Saturn', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/11175-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/11175-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('16637', 'Sonic Unleashed', 'N/A', 'Sony Playstation 2', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/16637-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('16649', 'Sonic CD', 'N/A', 'Microsoft Xbox 360', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/16649-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('17072', 'Sonic Spinball', 'N/A', 'PC', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/17072-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('18037', 'Sonic Rivals', 'N/A', 'Sony Playstation Portable', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/18037-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('19763', 'Sonic Riders', 'N/A', 'Sony Playstation 2', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/19763-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('29394', 'Sonic Eraser', 'N/A', 'Sega Mega Drive', 'N/A', 'N/A', 'Puzzle', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/29394-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/29394-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('27780', 'Sonic Boom', 'N/A', 'Amstrad CPC', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/27780-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('31091', 'Sonic Compilation', 'N/A', 'Sega Mega Drive', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/31091-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('8232', 'Sonic Spike', 'N/A', 'TurboGrafx 16', 'N/A', 'N/A', 'Sports', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/8232-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('20943', 'Sonic & Knuckles + Sonic the Hedgehog', 'N/A', 'Sega Mega Drive', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/20943-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('46991', 'Sonic Extreme', 'N/A', 'Microsoft Xbox', 'N/A', 'N/A', 'Sports', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2527', 'Sonic Heroes', 'N/A', 'PC', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/2527-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('924', 'Sonic Unleashed', 'N/A', 'Sony Playstation 3', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/924-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('63', 'Sonic Riders', 'N/A', 'PC', 'N/A', 'N/A', 'Racing', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/63-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('3943', 'Sonic Unleashed', 'N/A', 'Nintendo Wii', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3943-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3943-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('26760', 'Sonic Drift', 'N/A', 'Sega Game Gear', 'N/A', 'N/A', 'Racing', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/26760-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('3013', 'Sonic Blast', 'N/A', 'Sega Master System', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3013-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3013-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('4624', 'Sonic Classics', 'N/A', 'Sega Genesis', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/4624-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/4624-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('9819', 'Sonic Heroes', 'N/A', 'Sony Playstation 2', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/9819-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/9819-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('14981', 'Sonic Championship', 'N/A', 'Arcade', 'N/A', 'N/A', 'Fighting', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/14981-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('27256', 'Sonic Crackers', 'N/A', 'Sega Mega Drive', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/27256-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('29593', 'Sonic Spinball', 'N/A', 'Sega Mega Drive', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/29593-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('46073', 'Sonic Mania', 'N/A', 'Nintendo Switch', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/46073-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('48992', 'Sonic Mania', 'N/A', 'Sony Playstation 4', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/48992-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('42403', 'Sonic CD', 'N/A', 'Android', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/42403-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('43254', 'Sonic Boom', 'N/A', 'Arcade', 'N/A', 'N/A', 'Shooter', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/43254-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('47643', 'Sonic Forces', 'N/A', 'Sony Playstation 4', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/47643-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2303', 'Sonic Colors', 'N/A', 'Nintendo Wii', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/2303-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2346', 'Sonic Advance', 'N/A', 'Nintendo Game Boy Advance', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2346-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2346-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2416', 'Sonic Adventure', 'N/A', 'Sega Dreamcast', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2416-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2416-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('8065', 'Sonic Generations', 'N/A', 'PC', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/8065-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('6879', 'Sonic Rush', 'N/A', 'Nintendo DS', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/6879-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/6879-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('9208', 'Sonic R', 'N/A', 'Sega Saturn', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/9208-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/9208-2.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('16648', 'Sonic CD', 'N/A', 'Sony Playstation 3', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/16648-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('23869', 'Sonic & Knuckles', 'N/A', 'Sega Mega Drive', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/23869-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('28496', 'Sonic Riders', 'N/A', 'Microsoft Xbox', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/28496-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('24076', 'Sonic & Knuckles + Sonic the Hedgehog', 'N/A', 'Sega Genesis', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/24076-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('33877', 'Sonic Eraser', 'N/A', 'Sega Genesis', 'N/A', 'N/A', 'Puzzle', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/33877-1.png', 'http://thegamesdb.net/banners/boxart/original/front/33877-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('47943', 'Sonic Fury', 'N/A', 'Action Max', 'N/A', 'N/A', 'Shooter', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/47943-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('46387', 'Sonic Bash!', 'N/A', 'Sega Genesis', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/46387-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('733', 'Sonic & Knuckles', 'N/A', 'Sega Genesis', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/733-1.png', 'http://thegamesdb.net/banners/boxart/original/front/733-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2254', 'Sonic Shuffle', 'N/A', 'Sega Dreamcast', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2254-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2254-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('3694', 'Sonic Battle', 'N/A', 'Nintendo Game Boy Advance', 'N/A', 'N/A', 'Fighting', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3694-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3694-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('8480', 'Sonic Unleashed', 'N/A', 'Microsoft Xbox 360', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/8480-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('8048', 'Sonic Heroes', 'N/A', 'Microsoft Xbox', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/8048-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/8048-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('13146', 'Sonic R', 'N/A', 'PC', 'N/A', 'N/A', 'Racing', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/13146-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('10820', 'Sonic CD', 'N/A', 'PC', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/10820-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('11145', 'Sonic Labyrinth', 'N/A', 'Sega Game Gear', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/11145-2.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('7045', 'Sonic Heroes', 'N/A', 'Nintendo GameCube', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/7045-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/7045-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('33795', 'Sonic Dash 2: Sonic Boom', 'N/A', 'Android', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/33795-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('39170', 'Sonic & Knuckles + Sonic the Hedgehog 3', 'N/A', 'Sega Mega Drive', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/39170-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('43394', '2 in 1 - Sonic Advance & Sonic Battle', 'N/A', 'Nintendo Game Boy Advance', 'N/A', 'N/A', 'Fighting', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/43394-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/43394-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('25216', 'Sonic 2 In 1: Sonic 2 + Sonic Spinball', 'N/A', 'Sega Game Gear', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/25216-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('20945', 'Sonic & Knuckles + Sonic the Hedgehog 3', 'N/A', 'Sega Genesis', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('42342', 'Sonic & Knuckles + Sonic the Hedgehog 2', 'N/A', 'Sega Mega Drive', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/42342-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('45909', 'Combo Pack: Sonic Advance + Sonic Pinball Party', 'N/A', 'Nintendo Game Boy Advance', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/45909-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('45583', 'Sonic Blast Man', 'N/A', 'Arcade', 'N/A', 'N/A', 'Fighting', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/45583-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('35192', 'Sonic: Chrono Adventure', 'N/A', 'PC', 'N/A', 'N/A', 'Adventure', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/35192-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('41384', 'Sonic The Hedgehog', 'N/A', 'Nintendo 3DS', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/41384-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('691', 'Sonic the Hedgehog 3', 'N/A', 'Sega Genesis', 'N/A', 'N/A', 'Adventure', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/691-2.jpg', 'http://thegamesdb.net/banners/boxart/original/front/691-2.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('432', 'Sonic Adventure 2', 'N/A', 'Sega Dreamcast', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/432-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/432-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2580', 'Sonic Blast Man', 'N/A', 'Super Nintendo (SNES)', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2580-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2580-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('5755', 'Sonic the Hedgehog 2', 'N/A', 'Sega Game Gear', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/5755-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/5755-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('3014', 'Sonic the Hedgehog Chaos', 'N/A', 'Sega Master System', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3014-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3014-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('7504', 'Sonic the Hedgehog 2', 'N/A', 'Sega Mega Drive', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/7504-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/7504-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('11421', 'Sonic Rush Adventure', 'N/A', 'Nintendo DS', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/11421-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/11421-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('16647', 'Sonic the Fighters', 'N/A', 'Microsoft Xbox 360', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/16647-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('17070', 'Sonic 3 & Knuckles', 'N/A', 'PC', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/17070-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('28096', 'Sonic 3D Blast', 'N/A', 'Sega Mega Drive', 'N/A', 'N/A', 'Adventure', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/28096-1.png', 'http://thegamesdb.net/banners/boxart/original/front/28096-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('28344', 'Sonic Riders: Zero Gravity', 'N/A', 'Sony Playstation 2', 'N/A', 'N/A', 'Racing', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/28344-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/28344-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('26691', 'Sonic the Hedgehog Megamix', 'N/A', 'Sega Genesis', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/26691-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('31094', 'Sonic 3D: Flickies Island', 'N/A', 'Sega Mega Drive', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/31094-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('47642', 'Sonic Forces Bonus Edition', 'N/A', 'Nintendo Switch', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/47642-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('2284', 'Sonic 3D Blast', 'N/A', 'Sega Genesis', 'N/A', 'N/A', 'Adventure', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/2284-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/2284-2.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('3016', 'Sonic the Hedgehog', 'N/A', 'Sega Master System', 'N/A', 'N/A', 'Adventure', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3016-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3016-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('3693', 'Sonic Advance 3', 'N/A', 'Nintendo Game Boy Advance', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/3693-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/3693-1.png', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('7044', 'Sonic Gems Collection', 'N/A', 'Nintendo GameCube', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/back/7044-1.jpg', 'http://thegamesdb.net/banners/boxart/original/front/7044-1.jpg', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('16644', 'Sonic the Hedgehog 2', 'N/A', 'Sony Playstation 3', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/16644-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('16651', 'Sonic Adventure 2', 'N/A', 'Sony Playstation 3', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/16651-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('18931', 'Sonic Classic Collection', 'N/A', 'Nintendo DS', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/18931-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('20164', 'Sonic Mega Collection Plus', 'N/A', 'Microsoft Xbox', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/20164-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('50027', 'Sonic Mania Collectors Edition', 'N/A', 'Sony Playstation 4', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/50027-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('49847', 'Sonic the Hedgehog 2', 'N/A', 'Arcade', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/49847-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('35191', 'Sonic: Before the Sequel', 'N/A', 'PC', 'N/A', 'N/A', 'Action', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/35191-1.jpg', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('40417', 'Sonic the Hedgehog 2', 'N/A', 'Android', 'N/A', 'N/A', 'Platform', 'N/A', 'N/A', 'N/A', 'http://thegamesdb.net/banners/boxart/original/front/40417-1.png', 'http://thegamesdb.net/banners/', 'N/A', 'N/A', 'N/A', 'N/A');

            