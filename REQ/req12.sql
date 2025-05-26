/**
 * Fichier qui lance la 12eme requete SQL
 */

/***** Lien avec le sujet *****/

/**
 * Faire une requete avec une sous-requête corrêlée
 */


/***** Probleme *****/

/**
 * 
 * ON veut avoir le nom, prénom et la date de naissance des clients 
 * qui ont un jumeau astral (une personne née le même jour dans la même année)
 * dans la base données.
 * 
 */

/***** Reponses *****/

/**
 * 
 */

/*****Action*****/

SELECT firstname, lastname, birthday 
FROM customers c1 
WHERE birthday IN 
    (SELECT birthday 
    FROM customers c2 
    WHERE c1.id <> c2.id);