-- create db for chadwick bureau database
-- 2020 version

DROP DATABASE stats;
CREATE DATABASE stats;

\connect stats

DROP TABLE IF EXISTS allstarfull;
CREATE TABLE allstarfull (
    playerID text,
    yearID int DEFAULT null,
    gameNum int DEFAULT null,
    gameID text,
    teamID text,
    lgID text,
    GP int DEFAULT null,
    startingPos int DEFAULT null
);

DROP TABLE IF EXISTS appearances;
CREATE TABLE appearances (
  yearID int DEFAULT null,
  teamID text,
  lgID text,
  playerID text,
  G_all int DEFAULT null,
  GS text,
  G_batting int DEFAULT null,
  G_defense int DEFAULT null,
  G_p int DEFAULT null,
  G_c int DEFAULT null,
  G_1b int DEFAULT null,
  G_2b int DEFAULT null,
  G_3b int DEFAULT null,
  G_ss int DEFAULT null,
  G_lf int DEFAULT null,
  G_cf int DEFAULT null,
  G_rf int DEFAULT null,
  G_of int DEFAULT null,
  G_dh text,
  G_ph text,
  G_pr text
);

DROP TABLE IF EXISTS awardsmanagers;
CREATE TABLE awardsmanagers (
  playerID text,
  awardID text,
  yearID int DEFAULT null,
  lgID text,
  tie text,
  notes text
);

DROP TABLE IF EXISTS awardsplayers;
CREATE TABLE awardsplayers (
  playerID text,
  awardID text,
  yearID int DEFAULT null,
  lgID text,
  tie text,
  notes text
);

DROP TABLE IF EXISTS awardssharemanagers;
CREATE TABLE awardssharemanagers (
  awardID text,
  yearID int DEFAULT null,
  lgID text,
  playerID text,
  pointsWon double precision DEFAULT null,
  pointsMax double precision DEFAULT null,
  votesFirst double precision DEFAULT null
);

DROP TABLE IF EXISTS awardsshareplayers;
CREATE TABLE awardsshareplayers (
  awardID text,
  yearID int DEFAULT null,
  lgID text,
  playerID text,
  pointsWon double precision DEFAULT null,
  pointsMax double precision DEFAULT null,
  votesFirst double precision DEFAULT null
);

DROP TABLE IF EXISTS batting;
CREATE TABLE batting (
  playerID text,
  yearID int DEFAULT null,
  stint int DEFAULT null,
  teamID text,
  lgID text,
  G int DEFAULT null,
  AB int DEFAULT null,
  R int DEFAULT null,
  H int DEFAULT null,
  "2B" int DEFAULT null,
  "3B" int DEFAULT null,
  HR int DEFAULT null,
  RBI int DEFAULT null,
  SB int DEFAULT null,
  CS int DEFAULT null,
  BB int DEFAULT null,
  SO int DEFAULT null,
  IBB text,
  HBP text,
  SH text,
  SF text,
  GIDP text
);

DROP TABLE IF EXISTS battingpost;
CREATE TABLE battingpost (
  yearID int DEFAULT null,
  round text,
  playerID text,
  teamID text,
  lgID text,
  G int DEFAULT null,
  AB int DEFAULT null,
  R int DEFAULT null,
  H int DEFAULT null,
  "2B" int DEFAULT null,
  "3B" int DEFAULT null,
  HR int DEFAULT null,
  RBI int DEFAULT null,
  SB int DEFAULT null,
  CS text,
  BB int DEFAULT null,
  SO int DEFAULT null,
  IBB int DEFAULT null,
  HBP text,
  SH text,
  SF text,
  GIDP text
);

DROP TABLE IF EXISTS collegeplaying;
CREATE TABLE collegeplaying (
  playerID text,
  schoolID text,
  yearID int DEFAULT null
);

DROP TABLE IF EXISTS fielding;
CREATE TABLE fielding (
  playerID text,
  yearID int DEFAULT null,
  stint int DEFAULT null,
  teamID text,
  lgID text,
  POS text,
  G int DEFAULT null,
  GS text,
  InnOuts int DEFAULT null,
  PO int DEFAULT null,
  A int DEFAULT null,
  E int DEFAULT null,
  DP int DEFAULT null,
  PB text,
  WP text,
  SB text,
  CS text,
  ZR text
);

DROP TABLE IF EXISTS fieldingof;
CREATE TABLE fieldingof (
  playerID text,
  yearID int DEFAULT null,
  stint int DEFAULT null,
  Glf int DEFAULT null,
  Gcf int DEFAULT null,
  Grf int DEFAULT null
);

DROP TABLE IF EXISTS fieldingofsplit;
CREATE TABLE fieldingofsplit (
  playerID text,
  yearID int DEFAULT null,
  stint int DEFAULT null,
  teamID text,
  lgID text,
  POS text default null,
  G int DEFAULT null,
  GS int DEFAULT null,
  InnOuts int DEFAULT null,
  PO int DEFAULT null,
  A int DEFAULT null,
  E int DEFAULT null,
  DP int DEFAULT null,
  PB int DEFAULT null,
  WP int DEFAULT null,
  SB int DEFAULT null,
  CS int DEFAULT null,
  ZR double precision
);

DROP TABLE IF EXISTS fieldingpost;
CREATE TABLE fieldingpost (
  playerID text,
  yearID int DEFAULT null,
  teamID text,
  lgID text,
  round text,
  POS text,
  G int DEFAULT null,
  GS int DEFAULT null,
  InnOuts int DEFAULT null,
  PO int DEFAULT null,
  A int DEFAULT null,
  E int DEFAULT null,
  DP int DEFAULT null,
  TP int DEFAULT null,
  PB text,
  SB text,
  CS text
);

DROP TABLE IF EXISTS halloffame;
CREATE TABLE halloffame (
  playerID text,
  yearid int DEFAULT null,
  votedBy text,
  ballots int DEFAULT null,
  needed int DEFAULT null,
  votes int DEFAULT null,
  inducted text,
  category text,
  needed_note text
);

DROP TABLE IF EXISTS homegames;
CREATE TABLE homegames (
  "year.key" int DEFAULT null,
  "league.key" text,
  "team.key" text,
  "park.key" text,
  "span.first" text,
  "span.last" text,
  games int DEFAULT null,
  openings int DEFAULT null,
  attendance int DEFAULT null
);

DROP TABLE IF EXISTS managers;
CREATE TABLE managers (
  playerID text,
  yearID int DEFAULT null,
  teamID text,
  lgID text,
  inseason int DEFAULT null,
  G int DEFAULT null,
  W int DEFAULT null,
  L int DEFAULT null,
  rank int DEFAULT null,
  plyrMgr text
);

DROP TABLE IF EXISTS managershalf;
CREATE TABLE managershalf (
  playerID text,
  yearID int DEFAULT null,
  teamID text,
  lgID text,
  inseason int DEFAULT null,
  half int DEFAULT null,
  G int DEFAULT null,
  W int DEFAULT null,
  L int DEFAULT null,
  rank int DEFAULT null
);

DROP TABLE IF EXISTS people;
CREATE TABLE people (
  playerID text,
  birthYear int DEFAULT null,
  birthMonth int DEFAULT null,
  birthDay int DEFAULT null,
  birthCountry text,
  birthState text,
  birthCity text,
  deathYear text,
  deathMonth text,
  deathDay text,
  deathCountry text,
  deathState text,
  deathCity text,
  nameFirst text,
  nameLast text,
  nameGiven text,
  "weight" int DEFAULT null,
  height int DEFAULT null,
  bats text,
  throws text,
  debut text,
  finalGame text,
  retroID text,
  bbrefID text
);

DROP TABLE IF EXISTS parks;
CREATE TABLE parks (
  "park.key" text,
  "park.name" text,
  "park.alias" text,
  city text,
  state text,
  country text
);

DROP TABLE IF EXISTS pitching;
CREATE TABLE pitching (
  playerID text,
  yearID int DEFAULT null,
  stint int DEFAULT null,
  teamID text,
  lgID text,
  W int DEFAULT null,
  L int DEFAULT null,
  G int DEFAULT null,
  GS int DEFAULT null,
  CG int DEFAULT null,
  SHO int DEFAULT null,
  SV int DEFAULT null,
  IPouts int DEFAULT null,
  H int DEFAULT null,
  ER int DEFAULT null,
  HR int DEFAULT null,
  BB int DEFAULT null,
  SO int DEFAULT null,
  BAOpp text,
  ERA double precision DEFAULT null,
  IBB text,
  WP text,
  HBP text,
  BK int DEFAULT null,
  BFP text,
  GF text,
  R int DEFAULT null,
  SH text,
  SF text,
  GIDP text
);

DROP TABLE IF EXISTS pitchingpost;
CREATE TABLE pitchingpost (
  playerID text,
  yearID int DEFAULT null,
  round text,
  teamID text,
  lgID text,
  W int DEFAULT null,
  L int DEFAULT null,
  G int DEFAULT null,
  GS int DEFAULT null,
  CG int DEFAULT null,
  SHO int DEFAULT null,
  SV int DEFAULT null,
  IPouts int DEFAULT null,
  H int DEFAULT null,
  ER int DEFAULT null,
  HR int DEFAULT null,
  BB int DEFAULT null,
  SO int DEFAULT null,
  BAOpp text,
  ERA double precision DEFAULT null,
  IBB text,
  WP text,
  HBP text,
  BK text,
  BFP text,
  GF int DEFAULT null,
  R int DEFAULT null,
  SH text,
  SF text,
  GIDP text
);

DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries (
  yearID int DEFAULT null,
  teamID text,
  lgID text,
  playerID text,
  salary int DEFAULT null
);

DROP TABLE IF EXISTS schools;
CREATE TABLE schools (
  schoolID text,
  name_full text,
  city text,
  "state" text,
  country text
);

DROP TABLE IF EXISTS seriespost;
CREATE TABLE seriespost (
  yearID int DEFAULT null,
  round text,
  teamIDwinner text,
  lgIDwinner text,
  teamIDloser text,
  lgIDloser text,
  wins int DEFAULT null,
  losses int DEFAULT null,
  ties int DEFAULT null
);

DROP TABLE IF EXISTS teams;
CREATE TABLE teams (
  yearID int DEFAULT null,
  lgID text,
  teamID text,
  franchID text,
  divID text,
  Rank int DEFAULT null,
  G int DEFAULT null,
  Ghome text,
  W int DEFAULT null,
  L int DEFAULT null,
  DivWin text,
  WCWin text,
  LgWin text,
  WSWin text,
  R int DEFAULT null,
  AB int DEFAULT null,
  H int DEFAULT null,
  "2B" int DEFAULT null,
  "3B" int DEFAULT null,
  HR int DEFAULT null,
  BB int DEFAULT null,
  SO int DEFAULT null,
  SB int DEFAULT null,
  CS text,
  HBP text,
  SF text,
  RA int DEFAULT null,
  ER int DEFAULT null,
  ERA double precision DEFAULT null,
  CG int DEFAULT null,
  SHO int DEFAULT null,
  SV int DEFAULT null,
  IPouts int DEFAULT null,
  HA int DEFAULT null,
  HRA int DEFAULT null,
  BBA int DEFAULT null,
  SOA int DEFAULT null,
  E int DEFAULT null,
  DP text,
  FP double precision DEFAULT null,
  "name" text,
  park text,
  attendance text,
  BPF int DEFAULT null,
  PPF int DEFAULT null,
  teamIDBR text,
  teamIDlahman45 text,
  teamIDretro text
);

DROP TABLE IF EXISTS teamsfranchises;
CREATE TABLE teamsfranchises (
  franchID text,
  franchName text,
  active text,
  NAassoc text
);

DROP TABLE IF EXISTS teamshalf;
CREATE TABLE teamshalf (
  yearID int DEFAULT null,
  lgID text,
  teamID text,
  Half int DEFAULT null,
  divID text,
  DivWin text,
  "Rank" int DEFAULT null,
  G int DEFAULT null,
  W int DEFAULT null,
  L int DEFAULT null
);

DROP INDEX IF EXISTS PEOPLE_PLAYER;
CREATE INDEX PEOPLE_PLAYER ON people ( playerID );

DROP INDEX IF EXISTS APP_TEAM;
CREATE INDEX APP_TEAM ON appearances ( teamID );

DROP INDEX IF EXISTS APP_PLAYER;
CREATE INDEX APP_PLAYER ON appearances ( playerID );
