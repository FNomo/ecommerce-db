/**
 * Fichier servant a inserer le csv contenant les employees
 */

\copy employees(lastname,firstname,diallingCode,phoneNumber,registration,address,type,mail,birthday,store) FROM '../CSV/employees.csv' DELIMITER ',' CSV HEADER ;