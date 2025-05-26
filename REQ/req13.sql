/**
 * Fichier qui lance la 13eme requete SQL
 */

/***** Lien avec le sujet *****/

/**
 * Faire une requete avec une condition totalité avec un agrégat
 */


/***** Probleme *****/

/**
 * 
 * ON veut avoir le nom, prénom et la date de naissance du client le plus agé
 * 
 */

/***** Reponses *****/

/**
 * 
 */

/*****Action*****/

SELECT lastname, firstname, birthday 
FROM customers 
WHERE birthday = 
    (SELECT min(birthday) 
    FROM customers)