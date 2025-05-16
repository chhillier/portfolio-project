CREATE TABLE team_player (
team_id INTEGER NOT NULL,
player_id INTEGER NOT NULL,
last_changed_date DATE NOT NULL,
PRIMARY KEY (team_id, player_id),
FOREIGN KEY (team_id) REFERENCES team (team_id),
FOREIGN KEY (player_id) REFERENCES player (player_id)
);

.import --skip 1 data/team_player_data.csv team_player
SELECT count(*) FROM performance WHERE last_changed_date > '2024-04-01';
SELECT count(*) FROM team_player;