load data local infile "Batting.csv" IGNORE  into table batting columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "Master.csv" IGNORE  into table master columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "AllstarFull.csv" IGNORE  into table allstarfull columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "Appearances.csv" IGNORE  into table appearances columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "AwardsManagers.csv" IGNORE  into table awardsmanagers columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "AwardsPlayers.csv" IGNORE  into table awardsplayers columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "AwardsShareManagers.csv" IGNORE  into table awardssharemanagers columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "AwardsSharePlayers.csv" IGNORE  into table awardsshareplayers columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "BattingPost.csv" IGNORE  into table battingpost columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "CollegePlaying.csv" IGNORE  into table collegeplaying columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "Fielding.csv" IGNORE  into table fielding columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "FieldingOF.csv" IGNORE  into table fieldingof columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "FieldingPost.csv" IGNORE  into table fieldingpost columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "HallOfFame.csv" IGNORE  into table halloffame columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "HomeGames.csv" IGNORE  into table homegames columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "Managers.csv" IGNORE  into table managers columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "ManagersHalf.csv" IGNORE  into table managershalf columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "Parks.csv" IGNORE  into table parks columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "Pitching.csv" IGNORE  into table pitching columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "PitchingPost.csv" IGNORE  into table pitchingpost columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "Salaries.csv" IGNORE  into table salaries columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "Schools.csv" IGNORE  into table schools columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "SeriesPost.csv" IGNORE  into table seriespost columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "Teams.csv" IGNORE  into table teams columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "TeamsFranchises.csv" IGNORE  into table teamsfranchises columns terminated by ',' lines terminated by '\n' ignore 1 lines;
load data local infile "TeamsHalf.csv" IGNORE  into table teamshalf columns terminated by ',' lines terminated by '\n' ignore 1 lines;