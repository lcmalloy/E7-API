-----
--- Table 'user'
---
-----

DROP TABLE IF EXISTS "user"

CREATE TABLE "user" (
  id                  SERIAL NOT NULL,
  name                VARCHAR(100),
  email               VARCHAR(100),
  uid                 VARCHAR(100) PRIMARY KEY NOT NULL,
)

-----
-- table: 'profile'
--
-----

DROP TABLE IF EXISTS profile

CREATE TABLE profile (
  id                  SERIAL PRIMARY KEY NOT NULL,
  user_id             VARCHAR(100) NOT NULL,
  username            VARCHAR(100),
  creation_date       VARCHAR(50),
  bio                 TEXT,
  fav_char            VARCHAR(100),
  profile_photo       VARCHAR(200),
  highest_gear_score  INT,
  FOREIGN KEY (user_id) REFERENCES "user",
)

-----
-- table: 'equipment'
--
-----

DROP TABLE IF EXISTS equipment

CREATE TABLE equipment (
  id                SERIAL PRIMARY KEY NOT NULL,
  user_id           VARCHAR(100) NOT NULL
  type              VARCHAR(50) NOT NULL,
  score             INT NOT NULL,
  img               VARCHAR(60) NOT NULL,
  flatAtk           INT DEFAULT NULL,
  flatHp            INT DEFAULT NULL,
  flatDef           INT DEFAULT NULL,
  atkPercent        INT DEFAULT NULL,
  defPercent        INT DEFAULT NULL,
  hpPercent         INT DEFAULT NULL,
  critChance        INT DEFAULT NULL,
  critDamage        INT DEFAULT NULL,
  effectiveness     INT DEFAULT NULL,
  effectResist      INT DEFAULT NULL,
  speed             INT DEFAULT NULL,
  FOREIGN KEY (user_id) REFERENCES "user",
)

CREATE INDEX ON equipment(user_id)