commit ee61de75411967685a72fa40211167749ff15b6b
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Fri May 28 07:32:28 2021 +0200

    Ajout des requetes libres de 8 a 10

commit abe545522c67221f358ab222e7928cd714111204
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Fri May 28 05:55:37 2021 +0200

    Ajout des requetes de 1 a 7

commit 93755c1b969adaf2dcc24cbf22e8b0adbf043d4d
Merge: ae49f48 0875244
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Fri May 28 00:53:49 2021 +0200

    Merge branch 'master' of gaufre.informatique.univ-paris-diderot.fr:zobonomo/projet-de-bd6

commit 0875244d4dfa0eba27ea964f52dcebfb1e56e560
Author: David Musafiri <musafiridavid@gmail.com>
Date:   Fri May 28 00:50:46 2021 +0200

    Ajout requêtes 18 et 19

commit ae49f482e77621ec4d2c06afff23b256b5485536
Merge: 8fcad61 d3fc42e
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Thu May 27 23:30:24 2021 +0200

    Merge branch 'master' of gaufre.informatique.univ-paris-diderot.fr:zobonomo/projet-de-bd6

commit d3fc42e2d4346aeb443c1f9ecc163c3a86e6bd5a
Author: David Musafiri <musafiridavid@gmail.com>
Date:   Thu May 27 22:51:35 2021 +0200

    Soucis indentation req15

commit 001411d4062d9284eec5136822eba3d80f610a93
Author: David Musafiri <musafiridavid@gmail.com>
Date:   Thu May 27 22:45:45 2021 +0200

    Requêtes 11 à 17

commit 8fcad6146aa87c0e8a1c918fe8d16a7e077ed494
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Thu May 27 21:43:07 2021 +0200

    Requetes 2 + relation clients

commit 3da489f865a07bb29e36a35ebe7904311e72d052
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Thu May 27 20:21:58 2021 +0200

    Ajout d'une table employees

commit bec994a5935253b18120895d3a9c951a482a3d99
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Thu May 27 18:21:06 2021 +0200

    Fin de la premiere requete

commit 8524487d986c5b4174da13ce5490a75b49cc1fb3
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Thu May 27 18:16:49 2021 +0200

    Ajout de donnees nulles

commit b3cdbf5705a197fc01d50288ad4d57340b8493c4
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Thu May 27 17:45:13 2021 +0200

    Ajout de 4(3) relations nulls.

commit a03b5d7f375237861c6db59f893fbe6a1c608058
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Thu May 27 00:01:18 2021 +0200

    FIX : Les dates d'enregistrement etait les meme.

commit 80b928f7c462da490459966b041b102891926b87
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Wed May 26 21:20:19 2021 +0200

    FIX : Resolution d un bug de copy lie a l adresse null et a un id de produit egal a 0

commit fd4aba02ebc13ec32923c21bd604b71bb7e86816
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Wed May 26 20:38:52 2021 +0200

    Ajout d un champs card pour les commandes

commit 7c1df5043aa88a2da7a36e4734b1d5c8cdc1bef1
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Wed May 26 20:04:48 2021 +0200

    Ajout d'un utilisateur anonym

commit a5005bda50e0f3a6268bc4370ae72fab390bb794
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Wed May 26 19:52:29 2021 +0200

    Identifiaction des requetes

commit 6810bbf48b7742316faf69dfc627caf0555540c1
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Tue May 25 01:22:43 2021 +0200

    ### Changement SQL
    # Rajout des script associer au csv.

commit d914e61a4721edb28bc48608501c1f658e20eca5
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Mon May 24 23:10:25 2021 +0200

    Parentheses manquantes dans le main.sql

commit d753d6277e250d583f14a1fb42118a89fa8f5f8f
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Mon May 24 20:36:30 2021 +0200

    ### Changement CSV
    # Ajout d'un fichier csv commands.csv
    # Ajout d'un fichier csv return_commands.csv
    # Ajout d'un fichier csv cancel_commands.csv
    # Ajout d'un fichier csv comments.csv
    # Suppresion des colonne ID dans les CSV (de clothes et big_equipements)
    # Remplissage des colonne priceID dans les CSV (de clothes et big_equipements).
    ### Changement SQL
    # Rajout de contrainte pour price.
    # Rajout de contrainte pour le product.
    # Rajout de valeur par default pour le product.
    # Rajout de valeur par default pour customers.
    # Rajout de contrainte pour comments.
    # Rajout de table return_commands.
    # Rajout de table cancel_commands.

commit d90c04c1ffd34c4067a48c3e5f7e6382f1df3c3a
Author: David Musafiri <musafiridavid@gmail.com>
Date:   Sun May 23 20:03:56 2021 +0200

    Tables prix + Little Equipements

commit 3209b06a791e5a5703a3d51547cfb471b2cd0222
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Sun May 23 17:18:04 2021 +0200

    Oubli de l'ajout d'un drop if exist pour la sequence product id

commit e0decc14f94be8da741474308e35fb45c5e4fe35
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Sun May 23 17:15:18 2021 +0200

    Relocation du csv client et ajout de la sequence product_id

commit f7d869d80aa6b1340c33b0a0232abb4ada3f242e
Merge: 7bcc5a5 0831e5d
Author: ZOBO NOMO franc <mr.francnomo@gmail.com>
Date:   Sun May 23 16:16:39 2021 +0200

    Merge branch '13-refaire-le-shema-de-modelisation' into 'master'
    
    Resolve "Refaire le shema de modelisation."
    
    Closes #13
    
    See merge request zobonomo/projet-de-bd6!5

commit 7bcc5a53aa7de252dfc1614635e4bf158219a2ba
Merge: 6a20ce5 28303dd
Author: ZOBO NOMO franc <mr.francnomo@gmail.com>
Date:   Sun May 23 04:24:31 2021 +0200

    Merge branch '11-creation-des-ficheirs-cvs-des-clients' into 'master'
    
    Creation d'un CSV listant tous les clients
    
    Closes #11
    
    See merge request zobonomo/projet-de-bd6!3

commit 6a20ce50dcb9fdcba69f87ba44e2ed41556a3fbd
Merge: b1c2ee9 8c3c546
Author: ZOBO NOMO franc <mr.francnomo@gmail.com>
Date:   Sun May 23 04:24:12 2021 +0200

    Merge branch '6-remplir-la-table-des-produits' into 'master'
    
    Resolve "Remplir la table des produits."
    
    Closes #6
    
    See merge request zobonomo/projet-de-bd6!2

commit 0831e5d57a395e07b4ca89045a929fe877903ad1
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Sun May 23 04:20:47 2021 +0200

    Ajout d'une nouvelle modelisation

commit 8c3c5469e5589e34fc597dbb7bf1b9df59b12164
Merge: 500fd31 b1c2ee9
Author: MUSAFIRI david <david.musafiri@etu.univ-paris-diderot.fr>
Date:   Fri May 21 00:30:10 2021 +0200

    Merge branch 'master' into '6-remplir-la-table-des-produits'
    
    # Conflicts:
    #   main.sql

commit 500fd31ac3e55b6344a4417250c0050500767251
Author: David Musafiri <musafiridavid@gmail.com>
Date:   Fri May 21 00:24:20 2021 +0200

    Ajout table de prix

commit 047ff35f10fcacd7a1142d0d0326fdb2cf645e92
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Tue May 18 10:56:31 2021 +0200

    Modifaction du README.md ajout de classes servant a specifier les commandes

commit b1c2ee97b73e60a673f52102e053f329372e1a11
Author: Franc Zobo Nomo <mr.francnomo@gmail.com>
Date:   Mon May 17 23:43:05 2021 +0200

    Ajout des contraintes a la suppression

commit a11b0fc9a5d9c7d6d19fb2ebfa3192b5bca6ccf3
Author: Franc Zobo Nomo <mr.francnomo@gmail.com>
Date:   Mon May 17 23:33:14 2021 +0200

    Ajout de la contrainte DEFAULT

commit 9f902045d498afc2c66680b22b467cc6f7d6b3ca
Author: Franc Zobo Nomo <mr.francnomo@gmail.com>
Date:   Mon May 17 23:26:01 2021 +0200

    FIX du bug lie a la contraite check.

commit 012245167002c1ce29d05910fe4d023a383d25d8
Merge: 4e81808 256cbbb
Author: Franc Zobo Nomo <mr.francnomo@gmail.com>
Date:   Mon May 17 23:04:57 2021 +0200

    Merge branch 'master' of gaufre.informatique.univ-paris-diderot.fr:zobonomo/projet-de-bd6
    
    Merge test
    
    Merge Test

commit 256cbbb1a00ba726b9ea7bcf225aebcd1e932a07
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Mon May 17 23:02:26 2021 +0200

    Ajout de contraintes check au table

commit 4fbc6a02d93660840f6a0faadff1c648f867fa19
Author: David Musafiri <musafiridavid@gmail.com>
Date:   Sun May 16 13:37:14 2021 +0200

    MaJ Couleurs clothes et big_equipements

commit 4a807f386463865f4e9a06507753d2016f60514f
Author: David Musafiri <musafiridavid@gmail.com>
Date:   Sat May 15 02:01:27 2021 +0200

    Big_equipements

commit c3a059665819b05246a878749a443ba109332ed9
Author: David Musafiri <musafiridavid@gmail.com>
Date:   Sat May 15 01:58:16 2021 +0200

    MaJ clothes

commit 4e81808d4a700311ecacc9b835975aebbbc0495e
Author: Franc Zobo Nomo <mr.francnomo@gmail.com>
Date:   Fri May 14 18:09:06 2021 +0200

    Ajout de fichiers servant a la copy

commit ef93c3ba6337d5287751551f3e2b9fc2ddd10d90
Author: Franc Zobo Nomo <mr.francnomo@gmail.com>
Date:   Fri May 14 17:31:39 2021 +0200

    Ajout des fichiers servant a effectur les requetes

commit c3c41e9f1d4e8368ca4745e04e4b92699c087ea8
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Fri May 14 17:05:22 2021 +0200

    Ajout des fichiers de base servant a la requete

commit 28303dda959276cae0920816cfd25e880675ea02
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Fri May 14 15:39:45 2021 +0200

    Creation d'un CSV listant tous les clients

commit e75c4104047624284bfe86cfd04fedd34c83c8a3
Author: David Musafiri <musafiridavid@gmail.com>
Date:   Fri May 14 01:44:10 2021 +0200

    Vetements csv
    données

commit fe8b62572a74959d92d5d8a1f381aac06364dd9f
Author: David Musafiri <musafiridavid@gmail.com>
Date:   Thu May 13 16:47:43 2021 +0200

    Refactorisation en anglais

commit 663478038faf8ee92f7958020fabd30b66325db1
Author: David Musafiri <musafiridavid@gmail.com>
Date:   Thu May 13 16:40:37 2021 +0200

    Création des tables + MaJ README.md

commit a72162eea87fc13dd38a80f80c59303b43d136fc
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Mon Apr 5 19:20:02 2021 +0200

    Creation de la table customer

commit c943de21ada6e5c106f08aed6d68aa7d1914f5a4
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Sat Apr 3 15:24:22 2021 +0200

    # Modification du diagram des Prix et product
    # Modification du diagram des clients
    # Description des tables dans le README.md

commit 486d833484687a7ce8e0765a0884bb151ebe4adb
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Sat Apr 3 13:57:27 2021 +0200

    Mise a jour de diagram de table\nModification de la table commands\n insertion des informations sur les cles.

commit d4f01be8b81e71a8345d3b233f613d2de12ecae3
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Sat Apr 3 12:51:00 2021 +0200

    Rearrangement des shema pour qu'ils repondent mieux au exigence

commit a42714f9a481e23f838f52b536cc4a256cd62192
Merge: fcaae79 8fcddaf
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Sat Apr 3 06:03:16 2021 +0200

    Merge branch 'master' of gaufre.informatique.univ-paris-diderot.fr:zobonomo/projet-de-bd6

commit fcaae7932f1039e7b25fec3e2d26451983e053df
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Fri Apr 2 19:13:07 2021 +0200

    # Representation sous forme de diagrams des tables a effectuer

commit 8fcddaf7d54f03719e7ad06b76f267347a391d2f
Author: ZOBO NOMO franc <mr.francnomo@gmail.com>
Date:   Fri Apr 2 15:09:24 2021 +0200

    Rajout du numero etudiant de David Musafiri.

commit de8621c907e6de7e2a26cecda420706795d37d5e
Author: Franc Nomo <shhot-develop@outlook.com>
Date:   Fri Apr 2 14:56:20 2021 +0200

    # Creation de l'arborescence du projet
    # Preremplissage de quelques fichiers (notamment le README)

commit 6a16b180a3c872149a08ec32e5daf1594f7ae92a
Author: ZOBO NOMO franc <mr.francnomo@gmail.com>
Date:   Thu Apr 1 13:21:03 2021 +0200

    Initial commit
