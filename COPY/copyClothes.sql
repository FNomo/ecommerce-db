/**
 * Fichier servant a inserer le csv contenant les vetements
 */

\copy clothes(p_name,sport,brand,quantity,price_id,p_availability,state_stock,color,gender,category,size) FROM '../CSV/clothes.csv' DELIMITER ',' CSV HEADER ;