/**
 * Fichier qui lance la 3eme requete SQL
 */

/***** Lien avec le sujet *****/

/**
 * Faire une sous-requetes correlee
 */

/*****Probleme*****/

/**
 * On cherche a envoyer un message a avoir tous les conctact des commandes
 * en attente de livraison pour preciser qu'on veut leur livre le lendemain
 */

/*****Reponses*****/

/**
 * Dans le cas present on effectue une sous requete correlee dans
 * une clause WHERE
 */

/*****Action*****/
SELECT
    (SELECT firstname FROM customers AS cus WHERE cmd.id_user = cus.id),
    (SELECT lastname FROM customers AS cus WHERE cmd.id_user = cus.id),
    (SELECT diallingCode AS dialling_code  FROM customers AS cus WHERE cmd.id_user = cus.id),
    (SELECT phoneNumber AS phone FROM customers AS cus WHERE cmd.id_user = cus.id),
    product_id,
    price,
    cmd_name
FROM 
    commands AS cmd
WHERE 
    cmd.cmd_state = 'awaiting delivery' ;