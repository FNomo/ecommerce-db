/**
 * Fichier qui lance la 14eme requete SQL
 */

/***** Lien avec le sujet *****/

/**
 * Requête impliquant le calcul de deux agrégats (par exemple, les moyennes d’un
 * ensemble de maximums)
 */


/***** Probleme *****/

/**
 * 
 * Trouver le prix moyen des commandes (avg + sum)
 * 
 */

/***** Reponses *****/

/**
 * 
 */

/*****Action*****/

SELECT avg(s1) AS prix_moyen 
FROM 
    (SELECT sum(p1.price) AS s1 
    FROM commands c1 
    JOIN price p1 ON c1.product_id = p1.id 
    GROUP BY cmd_name) AS somme; 