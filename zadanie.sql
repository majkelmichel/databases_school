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

