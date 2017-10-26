import requests
import xml.etree.ElementTree as ET
from pathlib import Path


def get_data():
    my_file = Path("setup.sql")
    if my_file.is_file():
        print('File already exists.')
    else:
        base_url = "http://thegamesdb.net/api/"
        base_image_url = "http://thegamesdb.net/banners/"
        url = base_url + "GetGamesList.php?name=sonic"
        data = requests.get(url).content
        root = ET.fromstring(data)
        games = []
        for element in root.iter(tag='Game'):
            game_dict = {}
            for child in element:
                game_dict[child.tag] = child.text
            games.append(game_dict)
        for game in games:
            game_url = base_url + "GetGame.php?id=" + str(game['id'])
            data = ET.fromstring(requests.get(game_url).content).find('Game')
            if data is not None:
                print('Gathering data for: ' + game['GameTitle'])
                element = data.find('Overview')
                game['game_description'] = element.text if element else 'N/A'
                element = data.find('ReleaseDate')
                game['release_date'] = element.text if element else 'N/A'
                element = data.find('Players')
                game['num_players'] = element.text if element else 'N/A'
                element = data.find('Co-op')
                game['coop'] = element.text if element else 'N/A'
                element = data.find('Genres')
                game['genre'] = element.find('genre').text if element else 'N/A'
                element = data.find('Developer')
                game['developer'] = element.text if element else 'N/A'
                art = data.find('Images').findall('boxart')
                game['front_box_art'] = base_image_url + art[0].text if len(art) > 0 else base_image_url
                game['back_box_art'] = base_image_url + art[1].text if len(art) > 1 else base_image_url
                game['publisher'] = element.text if element else 'N/A'
            else:
                game['game_description'] = 'N/A'
                game['release_date'] = 'N/A'
                game['num_players'] = 'N/A'
                game['coop'] = 'N/A'
                game['genre'] = 'N/A'
                game['developer'] = 'N/A'
                game['front_box_art'] = 'N/A'
                game['back_box_art'] = 'N/A'
                game['publisher'] = 'N/A'
        sql_data = """
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

        """
        print('Creating SQL script')
        for game in games:
            print('Adding game: ' + game['GameTitle'])
            insert_query = """
INSERT INTO videogames.game (game_id, game_name, game_description, console, num_players, coop, genre, release_date, 
developer, publisher, front_box_art, back_box_art, logo, developer_logo, price, discount) 
VALUES('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s');

            """
            sql_data += insert_query % (
                game['id'].replace("'", ""),
                game['GameTitle'].replace("'", ""),
                game['game_description'].replace("'", ""),
                game['Platform'].replace("'", ""),
                game['num_players'].replace("'", ""),
                game['coop'].replace("'", ""),
                game['genre'].replace("'", ""),
                game['release_date'].replace("'", ""),
                game['developer'].replace("'", ""),
                game['publisher'].replace("'", ""),
                game['front_box_art'].replace("'", ""),
                game['back_box_art'].replace("'", ""),
                'N/A',
                'N/A',
                'N/A',
                'N/A'
            )
        with open("setup.sql", "a+") as f:
            f.write(sql_data)
        print('Done')


if __name__ == '__main__':
    get_data()
