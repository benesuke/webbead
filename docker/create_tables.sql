DROP TABLE IF EXISTS posts;

CREATE TABLE posts(
    post_id SERIAL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    posted_date TIMESTAMPTZ NOT NULL,
    posted_text TEXT NOT NULL,
    CONSTRAINT posts_title_uk UNIQUE (title)
);

INSERT INTO posts (title, posted_date, posted_text) VALUES
  ('2021 Worlds',
  '2021-11-07 09:28',
	'HA 2021-es League of Legends dontonek az otodik merkozeset egyszerre 4 millioan kovették eloben a kulonbozo platformokon ugy, hogy ebben az oruletes rekordban nem voltak benne a kinai adatok.' ||
	'Hiaba allitottak sokan azt, hogy a mult heten megrendezett T1 vs DWG KIA volt az "igazi" finale, az EDward Gaming keresztulhuzta a szamitasokat.'),
	('Papaszemes medve',
	'2021-12-10 16:45',
	'A papaszemes medve mas neven andesi medve (Tremarctos ornatus) az emlosok (Mammalia) osztalyanak ragadozok (Carnivora) rendjebe, ezen belul a medvefelek (Ursidae) csaladjaba tartozo faj.' ||
	'A papaszemes medve az Andokban, 4200 meteres magassagig terjedo hegyvideki elohelyeken fordul elo. Elterjedesi terulete Venezuelatol Boliviaig és Chileig huzodik. Magyarorszagon csak a Nyiregyhazi Allatparkban tartanak papaszemes medveket.');
