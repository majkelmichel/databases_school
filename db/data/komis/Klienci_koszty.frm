TYPE=VIEW
query=select `komis`.`klienci`.`nazwa` AS `nazwa`,`komis`.`klienci`.`adres` AS `adres`,`r`.`kwota` AS `kwota`,`r`.`data_wpisu` AS `data_wpisu` from (`komis`.`klienci` join `komis`.`rejestry` `r` on(`komis`.`klienci`.`autor_wpisu` = `r`.`autor_wpisu`))
md5=dc290d108388d220dce3b7a4f3451e5b
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2021-09-28 12:29:28
create-version=2
source=SELECT nazwa, adres, kwota, r.data_wpisu\nFROM klienci\n         JOIN rejestry r on klienci.autor_wpisu = r.autor_wpisu
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `komis`.`klienci`.`nazwa` AS `nazwa`,`komis`.`klienci`.`adres` AS `adres`,`r`.`kwota` AS `kwota`,`r`.`data_wpisu` AS `data_wpisu` from (`komis`.`klienci` join `komis`.`rejestry` `r` on(`komis`.`klienci`.`autor_wpisu` = `r`.`autor_wpisu`))
mariadb-version=100604
