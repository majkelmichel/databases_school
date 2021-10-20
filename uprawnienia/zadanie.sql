-- zadanie 1
DROP USER kupiec@localhost;
CREATE USER Kasia@localhost;
GRANT INSERT ON komis.klienci TO Kasia@localhost;
CREATE USER Jan@localhost;
GRANT INSERT ON komis.operacje TO Jan@localhost;
CREATE USER kasjer1@localhost;
CREATE USER kasjer2@localhost;

create view komis.Klienci_koszty as
	SELECT klienci.nazwa, klienci.adres, r.kwota, r.data_wpisu
FROM komis.klienci
         JOIN komis.rejestry r on klienci.autor_wpisu = r.autor_wpisu;

grant select on table komis.Klienci_koszty to kasjer1@localhost;

grant select on table komis.Klienci_koszty to kasjer2@localhost;

-- zadanie 2
CREATE DATABASE IF NOT EXISTS example;

CREATE TABLE table1 (
    pk int
);

CREATE TABLE table2 (
    pk int
);

CREATE USER user1@localhost;
CREATE USER user2@localhost;

-- zadanie 3
CREATE DATABASE uczniowie;

CREATE TABLE info (
    imie varchar(50),
    nazwisko varchar(50),
    id int
);

-- zadanie 4
CREATE DATABASE recepcja;

CREATE TABLE `pokoje` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `pietro` int,
  `miejsca` int,
  `cena` int
);

CREATE TABLE `rezerwacje` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `pokoj_id` int,
  `start` date,
  `end` date,
  `wynajmujacy` varchar(50)
);

ALTER TABLE `rezerwacje` ADD FOREIGN KEY (`pokoj_id`) REFERENCES `pokoje` (`id`);

CREATE USER recepcjonistka@localhost;

GRANT SELECT, INSERT, DELETE, UPDATE ON recepcja.rezerwacje TO recepcjonistka@localhost;

CREATE USER szef@localhost;

GRANT SELECT, INSERT, DELETE, UPDATE ON recepcja.pokoje TO szef@localhost;

-- zadanie 6
CREATE USER moderator@localhost IDENTIFIED BY 'qwerty';

GRANT SELECT, DELETE ON ogloszenia.* TO moderator@localhost;