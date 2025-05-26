/**
 * Fichier servant a inserer le csv contenant les commandes retournes
 */

\copy return_commands(cmd_id,return_date,repayment_date,reason) FROM '../CSV/return_commands.csv' DELIMITER ',' CSV HEADER;