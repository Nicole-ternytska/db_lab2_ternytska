
-------------------------
-- Create Board_game table
-------------------------
CREATE TABLE Board_game
(
  game_id      int           NOT NULL ,
  game_name    char(50)      NOT NULL ,
  play_time_id int           NOT NULL ,
  rating       decimal(8,2)  NULL
);

--------------------------
-- Create Collection table
--------------------------
CREATE TABLE Collection
(
  geek_id    char(10)     NOT NULL ,
  game_id      int        NOT NULL ,
  geek_ranking int        NULL
);

----------------------
-- Create Play_time table
----------------------
CREATE TABLE Play_time
(
  play_time_id int    NOT NULL ,
  play_time    int    NULL
);

------------------------
-- Create Geek table
------------------------
CREATE TABLE Geek
(
  geek_id     char(10)     NOT NULL ,
  geek_name  char(255)     NOT NULL ,
  age         int            NULL
);



----------------------
-- Define primary keys
----------------------
ALTER TABLE Board_game ADD CONSTRAINT PK_Board_game  PRIMARY KEY (game_id);
ALTER TABLE Collection ADD CONSTRAINT PK_Collection  PRIMARY KEY (game_id, geek_id);
ALTER TABLE Play_time ADD CONSTRAINT PK_Play_time PRIMARY KEY (play_time_id);
ALTER TABLE Geek ADD CONSTRAINT PK_Geek  PRIMARY KEY (geek_id);

----------------------
-- Define foreign keys
----------------------
ALTER TABLE Collection
ADD CONSTRAINT FK_Collection_Geek FOREIGN KEY (geek_id) REFERENCES Geek (geek_id);
ALTER TABLE Collection 
ADD CONSTRAINT FK_Collection_Board_game FOREIGN KEY (game_id) REFERENCES Board_game(game_id);
ALTER TABLE Play_time
ADD CONSTRAINT FK_Board_game_Play_time FOREIGN KEY (play_time_id) REFERENCES Play_time (play_time_id);

