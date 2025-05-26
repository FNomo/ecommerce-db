/**
 * Fichier qui lance la 10eme requete SQL
 */

/***** Lien avec le sujet *****/

/**
 * requete libre
 */

/*****Probleme*****/

/**
 * On recherche la marque qui fait vendre le plus de produit
 */

 /*****Reponse*****/
 SELECT
    brand,
    COUNT(DISTINCT product.id) AS product_count
FROM
    (SELECT p1.id , brand FROM clothes AS p1
        JOIN commands AS cmd
        ON cmd.product_id = p1.id AND p1.brand <> ''
    UNION
    SELECT p2.id, brand FROM little_equipements AS p2
        JOIN commands AS cmd
        ON cmd.product_id = p2.id AND p2.brand <> ''
    UNION
    SELECT p3.id , brand FROM big_equipements AS p3
        JOIN commands AS cmd
        ON cmd.product_id = p3.id AND p3.brand <> ''
    ) AS product
GROUP BY brand 
HAVING COUNT(DISTINCT product.id) >= ALL(
        SELECT COUNT(DISTINCT product.id)
        FROM (SELECT p1.id , brand FROM clothes AS p1
            JOIN commands AS cmd
            ON cmd.product_id = p1.id AND p1.brand <> ''
        UNION
        SELECT p2.id, brand FROM little_equipements AS p2
            JOIN commands AS cmd
            ON cmd.product_id = p2.id AND p2.brand <> ''
        UNION
        SELECT p3.id , brand FROM big_equipements AS p3
            JOIN commands AS cmd
            ON cmd.product_id = p3.id AND p3.brand <> ''
        ) AS product
        GROUP BY brand
    )