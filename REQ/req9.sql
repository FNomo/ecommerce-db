/**
 * Fichier qui lance la 9eme requete SQL
 */

/***** Lien avec le sujet *****/

/**
 * requete libre
 */

/*****Probleme*****/

/**
 * On recherche l'age moyen des clients achetant un produit
 * On le veut pour mieux cible notre publicites
 */

 /*****Reponse*****/
 SELECT
    product.id ,
    p_name AS product_name,
    brand,
    sport,
    AVG( EXTRACT(YEAR FROM birthday) ) AS avg_customers_bith_year
FROM
    (SELECT p1.id,p_name , sport , brand , birthday FROM clothes AS p1
        JOIN commands AS cmd
        ON cmd.product_id = p1.id
        JOIN customers AS cus 
        ON cmd.id_user = cus.id
    UNION
    SELECT p2.id,p_name , sport , brand, birthday FROM little_equipements AS p2
        JOIN commands AS cmd
        ON cmd.product_id = p2.id
        JOIN customers AS cus 
        ON cmd.id_user = cus.id
    UNION
    SELECT p3.id,p_name , sport , brand , birthday FROM big_equipements AS p3
        JOIN commands AS cmd
        ON cmd.product_id = p3.id
        JOIN customers AS cus 
        ON cmd.id_user = cus.id
    ) AS product
GROUP BY id,p_name,brand, sport;