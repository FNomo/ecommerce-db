/**
 * Fichier qui lance la 19eme requete SQL
 */

 /*
 * Trouver tous les articles en lien avec le football
 */

 (SELECT DISTINCT p_name 
 FROM clothes 
 WHERE sport ='SOCCER')
 UNION 
 (SELECT DISTINCT p_name 
 FROM little_equipements 
 WHERE sport ='SOCCER')
 UNION 
 (SELECT DISTINCT p_name 
 FROM big_equipements 
 WHERE sport = 'SOCCER');

