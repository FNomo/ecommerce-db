/**
 * Fichier qui lance la 18eme requete SQL
 */


 /*
  * Trouver le total des sommes perdues avec les commandes annulées ou retounées
  */

SELECT sum(price) as lost_money
FROM 
    ((SELECT price 
    FROM commands 
    WHERE cmd_state = 'canceled' )
    UNION 
    (SELECT price 
    FROM commands 
    WHERE cmd_state = 'return accepted'))as lost_money_cl;






