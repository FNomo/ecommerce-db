/**
 * Fichier servant a inserer le csv contenant les commandes annules
 */

\copy cancel_commands(cmd_id,cancel_date,repayment_date) FROM '../CSV/cancel_commands.csv' DELIMITER ',' CSV HEADER;