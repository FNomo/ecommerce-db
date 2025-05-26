/**
 * Fichier qui lance la 17eme requete SQL
 */

 /***** Lien avec le sujet *****/

/**
 * Deux requêtes qui renverraient le même résulat si vos tables ne contenaient pas de null.
 */


/**
 * 
 * Trouver les equipements les plus représentés dans la base.
 * 
 */

/***** Reponses *****/

/**
 * 
 */

/*****Action*****/


SELECT b1.p_name, b1.quantity 
FROM big_equipements b1 
WHERE NOT EXISTS (
    SELECT * 
    FROM big_equipements b2 
    WHERE b2.quantity > b1.quantity)


/* ON pourrait faire en sorte que les deux requêtes renvoient la même chose
 * en ajoutant une condition "is NOT null")