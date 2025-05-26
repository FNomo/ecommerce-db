/**
 * Fichier servant a inserer le csv contenant les commandes annules
 */

\copy comments(id_user,id_product,grade,opinion,cmt_date,likes,dislikes) FROM '../CSV/comments.csv' DELIMITER ',' CSV HEADER;