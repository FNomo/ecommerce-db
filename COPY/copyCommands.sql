/**
 * Fichier servant a inserer le csv contenant les commandes
 */

\copy commands(cmd_date,id_user,product_id,quantity,price,cmd_name,cmd_address,cmd_state,delivery_date,billing_date) FROM '../CSV/commands.csv' DELIMITER ',' CSV HEADER ;