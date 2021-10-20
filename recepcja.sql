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