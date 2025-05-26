/**
 * Fichier qui lance la 11eme requete SQL
 */
 

 /***** Lien avec le sujet *****/

/**
 * Faire une requete avec une jointure externe (ici FULL JOIN)
 */


/***** Probleme *****/

/**
 * 
 * ON veut avoir le nom et le prénom des clients qui ont effectué une commande ou non.
 * 
 */

/***** Reponses *****/

/**
 * 
 */

/*****Action*****/

SELECT firstname, lastname 
FROM customers 
FULL JOIN commands 
ON customers.id = commands.id_user;