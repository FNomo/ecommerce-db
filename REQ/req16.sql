/**
 * Fichier qui lance la 16eme requete SQL
 */

/***** Probleme *****/

/***** Lien avec le sujet *****/

/**
 * Deux requêtes qui renverraient le même résulat si vos tables ne contenaient pas de null.
 */


/**
 * 
 * Trouver les equipements les plus représentés.
 * 
 */

/***** Reponses *****/

/**
 * 
 */

/*****Action*****/


SELECT b1.p_name, b1.quantity 
FROM big_equipements b1 
WHERE b1.quantity = (
    SELECT max(quantity) 
    FROM big_equipements)

