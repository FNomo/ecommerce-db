/**
 * Fichier qui lance la 1ere requete SQL
 */

/***** Lien avec le sujet *****/

/**
 * Faire une requete qui porte sur au moins 3 tables
 */


/***** Probleme *****/

/**
 * Assez simple pour debuter.
 * On cherche a trouver tous les produits qui ont une quantite nul et qui n'ont pas ete commander.
 * Dans le but de les commander a leurs tours.
 */

/***** Reponses *****/

/**
 * On utilise ici l'union de requete SELECT-FROM-WHERE etant donne 
 * que les relations ne possede pas le meme nombre de d attributs mais
 * possede des atributs quand meme des attributs similaire.
 * On redefinis alors ces attributs avec AS pour que par exemple : T.s et V.s
 * soit juste identifier par s.
 */

/*****Action*****/
SELECT id,p_name,sport,brand,quantity,price_id,p_availability,state_stock,color 
AS id,p_name,sport,brand,quantity,price_id,p_availability,state_stock,color
FROM big_equipements
WHERE state_stock = 'sold_out'
    UNION
SELECT id,p_name,sport,brand,quantity,price_id,p_availability,state_stock,color 
AS id,p_name,sport,brand,quantity,price_id,p_availability,state_stock,color
FROM little_equipements
WHERE state_stock = 'sold_out'
    UNION
SELECT id,p_name,sport,brand,quantity,price_id,p_availability,state_stock,color 
AS id,p_name,sport,brand,quantity,price_id,p_availability,state_stock,color
FROM clothes
WHERE state_stock = 'sold_out' ;