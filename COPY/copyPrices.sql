/**
 * Fichier servant a inserer le csv contenant les prix
 */

\copy price(price,date_price) FROM '../CSV/prices.csv' DELIMITER ',' CSV HEADER ;