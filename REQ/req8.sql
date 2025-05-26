/**
 * Fichier qui lance la 8eme requete SQL
 */

/***** Lien avec le sujet *****/

/**
 * requete libre
 */

/*****Probleme*****/

/**
 * On recherche les produit les moins biens evaluer
 * (Le commentaire doit avoir au moins 5)
 * Dans le but d'ajuster leur prix
 */

 /*****Reponse*****/
SELECT
    p_name AS product_name,
    sport,
    brand,
    AVG(grade) AS avg_eval,
    AVG(likes) AS avg_favorable_opinion,
    AVG(dislikes) AS avg_unfavorable_opinion
FROM(
    SELECT p1.id,p_name , sport , brand , grade ,likes , dislikes FROM clothes AS p1
        JOIN comments AS com
        ON com.id_product = p1.id
    UNION
    SELECT p2.id,p_name , sport , brand, grade ,likes , dislikes FROM little_equipements AS p2
        JOIN comments AS com
        ON com.id_product = p2.id
    UNION
    SELECT p3.id,p_name , sport , brand , grade ,likes , dislikes FROM big_equipements AS p3
        JOIN comments AS com
        ON com.id_product = p3.id
) AS commented_product
GROUP BY p_name,sport,brand
HAVING AVG(grade) <=1 AND  AVG(likes) >= 5 ;