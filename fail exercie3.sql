SELECT * FROM address
SELECT * FROM address_coordonnées

ALTER TABLE address
ADD latitude DOUBLE

ALTER TABLE address
ADD longitude DOUBLE

INSERT INTO address (latitude) SELECT latitude FROM address_coordonnées
#Error Code: 1364. Field 'address' doesn't have a default value

INSERT INTO address (latitude) VALUE (43.1979267);
#Error Code: 1364. Field 'address' doesn't have a default value

#impossible de trouver le fichier my.cnf


ALTER TABLE dataengineer.address
CHANGE COLUMN latitude DOUBLE NULL DEFAULT 1 ,
CHANGE COLUMN longitude DOUBLE NULL DEFAULT 1 ;


drop database dataengineer

ALTER TABLE address DROP COLUMN latitude
ALTER TABLE address DROP COLUMN longitude

ALTER TABLE dataengineer.résultat
RENAME TO  dataengineer.address_coordonnées