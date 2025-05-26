/**
 * Fichier qui lance la 2eme requete SQL
 */

/***** Lien avec le sujet *****/

/**
 * Faire une ’auto jointure’ (jointure de deux copies d’une même table)
 */

/*****Probleme*****/

/**
 * On imagine que une employee nommee Agathe a envoye un mail (d'une adresse non repertorie) au siege
 * pour faire remonter des soucis cause par sa direction
 * On veut donc obtenir la liste de ses superieurs pour mene une enquete interne
 */

/*****Reponses*****/
/**
 * Pour cela on fait un SELF JOIN (une auto - jointure),
 * On effectue la jointure avec un LEFT JOIN , on peut bien entendu le faire aussi avec un RIGHT.
 * On associe a chaque employee ses superieur (On a ainsi une liste hierarchique pour chaque employee)
 * Puis on ajoute une clause where pour restreindre l'ensemble a Agathe
 */

/*****Action*****/
SELECT 
employee.id AS employee_id, 
employee.firstname AS employee_firstname ,
employee.lastname AS employee_lastname,
employee.mail AS employee_email,
boss.id AS boss_id,
boss.firstname AS boss_firstname,
boss.lastname AS boss_lastname,
boss.type AS boss_type ,
boss.mail AS boss_email,
employee.store

FROM employees AS employee
LEFT JOIN employees AS boss
    ON boss.store = employee.store
    AND boss.type < employee.type
WHERE employee.firstname = 'Agathe' ;
