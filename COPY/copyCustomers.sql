/**
 * Fichier servant a inserer le csv contenant les clients
 */

INSERT INTO customers(id,lastname,firstname,diallingCode,phoneNumber) VALUES (0,'anonym' , 'anonym',0, '' ) ;
\copy customers(lastname,firstname,diallingCode,phoneNumber,registration,pseudo,address,mail,birthday,lastconnection) FROM '../CSV/customers.csv' DELIMITER ',' CSV HEADER ;