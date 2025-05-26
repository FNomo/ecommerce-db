/**
 * Fichier qui lance la 6eme requete SQL
 */

/***** Lien avec le sujet *****/

/**
 * Un agregat necessitant GROUP BY et HAVING
 */

/*****Probleme*****/

/**
 * Un client cherche a devenir employee (Il a 39 ans) et faire carriere
 * Il veut savoir dans quel magasin il a le plus chances d'evoluer alors il souhaite connaitre
 * l'age moyen par poste
 * Il fixe une autre condition il ne veut pas travailler avec des personnes plus jeune que son fils (ne en 96)
 */

/*****Reponses*****/

/**
 * On calcule la moyenne
 * de chaque groupe (store , position)
 * grace a la fonction d'agregat AVG
 */

 /*****Action*****/
SELECT 
    store,
    type AS position,
    ROUND( AVG( EXTRACT( YEAR FROM birthday )  ) ) AS avg_birthday_year
FROM 
    employees
GROUP BY store,position
HAVING MIN( ROUND(EXTRACT( YEAR FROM birthday) )) < 1996;