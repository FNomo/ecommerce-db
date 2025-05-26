/**
 * Fichier qui lance la 4eme requete SQL
 */

/***** Lien avec le sujet *****/

/**
 * Faire une sous-requetes dans le FROM
 */

/*****Probleme*****/

/**
 * On cherche a lire les produits qui sont commander en masse (plus de 6)
 * mais au final annuler
 * Pour pouvoir ajuste leur prix des produits
 * qui ont ete annuler
 */

/*****Reponses*****/

/**
 * Pour cela on va effectuer une sous-requete
 * dans le fFROM
 */

/*****Action*****/
SELECT 
    id AS product_id,
    p_name AS product_name,
    sport,
    brand,
    quantity AS quantity_stock,
    state_stock
FROM
    (
    SELECT *
    FROM (
        SELECT id,p_name,sport,brand,quantity,state_stock
            FROM  clothes
        UNION
        SELECT id,p_name,sport,brand,quantity,state_stock
            FROM  little_equipements
        UNION
        SELECT id,p_name,sport,brand,quantity,state_stock
            FROM  big_equipements
        ) AS product
        WHERE EXISTS(
            SELECT *
            FROM commands cmd
            WHERE EXISTS(
                SELECT *
                FROM cancel_commands cncl_cmd
                WHERE product.id = cmd.product_id
                AND cmd.quantity > 6 
                AND cncl_cmd.cmd_id = cmd.id
            )
        )
        
    ) AS canceled_products 
WHERE canceled_products.p_name <> '' ;