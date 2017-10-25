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
    game_description VARCHAR(100),
    console VARCHAR(30),
    num_players INT,
    coop VARCHAR(30),
    genre VARCHAR(30),
    release_date VARCHAR(30),
    developer VARCHAR(30),
    publisher VARCHAR(30),
    front_box_art VARCHAR(30),
    back_box_art VARCHAR(30),
    logo VARCHAR(30),
    developer_logo VARCHAR(30),
    price DOUBLE,
    discount DOUBLE,
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