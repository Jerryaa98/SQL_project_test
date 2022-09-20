drop database hw5;
create database hw5;
use hw5;
CREATE TABLE teams
  (
     num         INT PRIMARY KEY NOT NULL auto_increment,
     team        VARCHAR(50) NOT NULL,
     city        VARCHAR(50) NOT NULL,
     established INT NOT NULL,
     coach       VARCHAR(50) NOT NULL,
     wins        INT NOT NULL
  );

INSERT INTO teams
            (team,city,established,coach, wins)
VALUES      ('Maccabi', 'Tel-Aviv', 1960, 'Neven Spahija', 12),
            ('Hapoel', 'Jerusalem', 1965, 'Dainius Adomaitis', 9),
            ('Maccabi', 'Haifa', 1978, 'Amit Ben-David', 6),
            ('Hapoel', 'Tel-Aviv', 1957, 'Dani Franko', 8),
            ('Hapoel', 'Galil-elion', 1972, 'Barak Peleg', 11);
CREATE TABLE players
  (
     playerid   INT PRIMARY KEY NOT NULL auto_increment,
     playername VARCHAR(50) NOT NULL,
     teamnum    INT NOT NULL,
     age        INT NOT NULL
  );

INSERT INTO players
            (PlayerName, TeamNum, Age)
VALUES      ('Gil Benny', 5 , 23),
            ('Yoval Zossman', 1, 22),
            ('Iftach Ziv', 5, 26),
            ('Omri Kasspi', 1, 32),
            ('Adam Ariel', 2, 27),
            ('Tamir Blat', 2, 24),
            ('Adi Cohen Saban', 2, 27),
            ('Naor Sharon', 3, 26),
            ('Rom Gefen', 3, 27),
            ('Matan Naor', 4, 31);

CREATE TABLE budget
  (
     teamnum INT PRIMARY KEY NOT NULL auto_increment,
     budget  INT NOT NULL
  );

INSERT INTO budget
            (budget)
VALUES      (3500),
            (2100),
            (1500),
            (2000),
            (1700);

CREATE TABLE houses
  (
     teamnum INT PRIMARY KEY NOT NULL auto_increment,
     house   VARCHAR(1) NOT NULL
  );

INSERT INTO houses
            (house)
VALUES      ('B'),
            ('A'),
            ('A'),
            ('B'),
            ('A'); 