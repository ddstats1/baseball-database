
CREATE TABLE dbo.game_pitches (
	pitcher_id varchar(100),
    pitcher_name varchar(100),
    -- wanna add game_id as the first primary key, but will need to calculate it
    -- for each unique game
    PRIMARY KEY (at_bat_number, pitch_number)
    FOREIGN KEY ()
)


