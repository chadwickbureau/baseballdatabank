use stats;

DROP INDEX PEOPLE_PLAYER ON people;
DROP INDEX APP_TEAM ON appearances;
DROP INDEX APP_PLAYER ON appearances;

DROP TABLE IF EXISTS allstarfull;
DROP TABLE IF EXISTS appearances;
DROP TABLE IF EXISTS awardsmanagers;
DROP TABLE IF EXISTS awardsplayers;
DROP TABLE IF EXISTS awardssharemanagers;
DROP TABLE IF EXISTS awardsshareplayers;
DROP TABLE IF EXISTS batting;
DROP TABLE IF EXISTS battingpost;
DROP TABLE IF EXISTS collegeplaying;
DROP TABLE IF EXISTS fielding;
DROP TABLE IF EXISTS fieldingof;
DROP TABLE IF EXISTS fieldingofsplit;
DROP TABLE IF EXISTS fieldingpost;
DROP TABLE IF EXISTS halloffame;
DROP TABLE IF EXISTS homegames;
DROP TABLE IF EXISTS managers;
DROP TABLE IF EXISTS managershalf;
DROP TABLE IF EXISTS parks;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS pitching;
DROP TABLE IF EXISTS pitchingpost;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS schools;
DROP TABLE IF EXISTS seriespost;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS teamsfranchises;
DROP TABLE IF EXISTS teamshalf;


use mysql;
DROP DATABASE stats;