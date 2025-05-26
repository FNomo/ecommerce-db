/**
 * Fichier servant a inserer le csv contenant les petits equipements
 */

\copy little_equipements(p_name,sport,brand,quantity,price_id,p_availability,state_stock,color) FROM '../CSV/little_equipements.csv' DELIMITER ',' CSV HEADER ;