/**
 * Fichier servant a inserer le csv contenant les gros equipements
 */

\copy big_equipements(p_name,sport,brand,quantity,price_id,p_availability,state_stock,color,material,eq_length,eq_width,eq_height) FROM '../CSV/big_equipements.csv' DELIMITER ',' CSV HEADER ;