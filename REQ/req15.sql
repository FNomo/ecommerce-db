/**
 * Fichier qui lance la 15eme requete SQL
 */
/***** Lien avec le sujet *****/

/**
 * Faire une requete avec une condition totalité avec une sous-requête corrélée
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
FROM customers c1 
WHERE c1.birthday < ALL 
    (SELECT DISTINCT birthday 
    FROM customers c2
    WHERE c2.id <> c1.id AND c2.birthday IS NOT null)
