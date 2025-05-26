/**
 * Fichier qui lance la 5eme requete SQL
 */

/***** Lien avec le sujet *****/

/**
 * Faire une sous-requetes dans le WHERE
 */

/*****Probleme*****/

/**
 * Cette requete est assez simple on cherche tous les clients
 * qui se ont connecter sur notre site depuis la pandemie et qui ont passer une commande.
 * Pour les envoyer une offre promotionnele par mail
 */

/*****Reponses*****/

/**
 * Pour cela on va faire une sous-requete correlee
 * dans une clause WHERE.
 * un utilisateur est ajoute dans l'ensemble si on a la condition (1)
 * produit une relation non vide
 */

/*****Action*****/
SELECT
    id AS user_ID,
    firstname,
    lastname,
    mail,
    lastconnection
FROM customers AS cus 
WHERE EXISTS (
    SELECT *
    FROM commands AS cmd
    WHERE /*(1) */
        cmd.id_user = cus.id
        AND EXTRACT(YEAR FROM cus.lastconnection) >= 2020
        AND EXTRACT(YEAR FROM cmd.cmd_date) >= 2020
) ;