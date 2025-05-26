/**
 * Fichier qui lance la 7eme requete SQL
 */

/***** Lien avec le sujet *****/

/**
 * Un agregat necessitant HAVING et HAVING
 */

/*****Probleme*****/

/**
 * On cherche a savoir la somme qu'on a rembourse aupres de chaque client qui se sont fait rembourse au moins 2 commandes.
 * Pour pouvoir detecter des fraudes de la part de certains clients malveillants.
 */

 /*****Reponse*****/
SELECT 
    firstname,
    lastname,
    diallingCode AS dialling_code,
    phoneNumber AS phone,
    ROUND( SUM(price ) ) AS total_repayment
FROM (
    SELECT * FROM customers AS cus
    JOIN commands AS cmd
    ON
        cmd.id_user = cus.id AND
        cmd.cmd_state IN ('repayment accepted' ,'awaiting repayment','repayed')
) AS customer_cmd
GROUP BY firstname,lastname,diallingCode,phoneNumber
HAVING COUNT(customer_cmd.id_user) >= 2;