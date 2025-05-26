# projet de BD6

Ce projet est le travail demander pour le cours de BD6. Il a pour but la modelisation, le peuplementet la mise d\' une base de donnee d'un site de e-commerce. Ce site vendra des articles de sport collectifs(Basket-Ball, Football , Rugby , Handball et Volley-Ball) et de musculation. Il vendra donc a la fois des tenues et de l'equipements.

## Auteurs

---

* MUSAFIRI David, etudiant numero : 21965358 .
* ZOBO NOMO Franc, etudiant numero : 71800466 .

## Installation

---

## Description des tables

---

### Customers(Clients)

La table produits sert a stocker tout les clients qui se ont de l'activite sur notre site de e-commerce. elle contient les champs :

* ID (INT), servant de PRIMARY KEY
* nom (TEXT)
* prenom (TEXT)
* pseudo (TEXT)
* mail (TEXT)
* numero de telephone (INT)
* Date d'anniversaire (DATE)
* Date d'inscripton (DATE)
* Date de derniere connection (DATE)
* Une addresse (TEXT)

### Products(Produits)

La table produit est une table "parents" elle ne contiendra pas de ligne , elle sert juste a creer des table fille qui elles seront remplies. Ces champs sont :

* Un ID unique (INT), servant de primary key
* Un nom (TEXT)
* Un sport (TEXT)
* une marque (TEXT)
* Une quantite (INT) representant le nombre de produit en stock
* Un ID (INT) de prix correspondant a une ligne dans la table des prix, il sert de foreign key.
* un champs servant a indiquer la disponibilite(TEXT) ( savoir s'il est disponible uniquement sur commande , ou bien uniquement en mangasin ou alors les 2).
* Un champs representant son etats en stock (TEXT), en stock , en rupture de stock ou bien commande.
* Un produit a aussi une couleur

Cependant, comme dit precedemment cet table n'as pas pour but d'etre alimente elle servira dans notre cas de table parent aux classe :

* Clothes , reprentants les produits de type vetement
* Little equipments, representant les produits d'equipement de petites taille , du type ballon : protege tibias, etc..
* Big Equipments, representant les produits d'equipments de grande taille , cage , panier , filet , etc...

### Clothes (Vetements)

En plus de posseder les champs qui sont dans la table product,  elle possede les champs suivants :

* genre (TEXT) , (homme , femme , unisex , garcon ou fille)
* categrory (TEXT) (chaussure , maillot , etc ... )
* la taille (INT), representant la taille , vous l'aurez compris, pour l'interpreter on devra prendre en compte la valeur du champs category et du type

### Little equipments (petits equipements)

En plus de posseder les champs qui sont dans la table product,  elle possede les champs suivants :

* material (TEXT) ( en acier , en caoutchouc)
* taille (INT), par exemple 7 , pour un ballon de basketball de taille 7.

### Big Equipements (grands equipements)

En plus de posseder les champs qui sont dans la table product,  elle possede les champs suivants :

* un materiel (TEXT) comme la table little equipments
* Un champs representant les options (TEXT) , (par exemple : a monter a domicile pour un panier de basket).
* trois champs representant la dimension : une longueur , une largeur et une hauteur. (INT)

### Price (prix)

Comme vue precedements un produits ne contients pas de prix mais l'identifiant d'un prix(celui fait reference a un prix de la table price). Cela sert a etudier le cout d'un produit.
La table contenant tous ces prix se nomme price et contient :

* un ID (INT) , servant de PRIMARY KEY
* une ID (INT) de produit au quel le prix fait reference , servant de FOREIGN KEY
* un prix (FLOAT), valeur constituant a proprement dit le prix.
* Une date (DATE), de mise en place

### Commands(Commandes)

Chaque clients ayant acces au site aura la possibiliter de commander des articles, ceux-ci seront stocker dans la table commands. Elle contient :

* un ID, servant de PRIMARY KEY.
* date de passage (DATE), la date a la quel la commande a ete passee.
* l'ID (INT) d'un utilisateur ayant passe la commande.il s'agit donc d'une FOREIGN KEY.
* L'ID (INT) du produit commande, il s'agit alors d'une FOREIGN KEY.
* une quantite (INT)
* un prix (FLOAT)
* un nom (TEXT), servant a regrouper plusieurs article commande dans le cas d'une commande sous forme de panier.
* Une addresse de livraison (TEXT).
* un etats (TEXT), servant a identifier le status de la commande. Par exemple : livre , commande , rembourse , etc ...
* Un moyen de paiement de paiement (TEXT).
* Date de livraison (DATE)
* Date de paiment (DATE)

### CommandsCancel(Commandes Annules)

Chaque clients ayant acces au site aura la possibiliter d'annuler des articles qu'il aura commander ceux-ci seront, une fois la demande accepter ceux-ci seront placer dans la table CommandsCancel. Elle contient :

* l'ID d'une commande , il s'agit alors d'une FOREIGN KEY
* une date d'annulation (DATE), date a laquelle la commande a ete annule
* une date de remboursement (DATE) , date a laquelle la commande a ete rembourse si necessaire

Dans cette table Chaque ligne est unique car on ne peut pas annule plusieurs fois la meme commande.

### CommandsReturns(Commandes retournes)

Chaque clients ayant acces au site aura la possibiliter de retourner des articles qu'il aura commander pour diferentes raison. Ceux-ci, une fois la demande accepter, seront placer dans la table CommandsReturns. Elle contient :

* l'ID d'une commande , il s'agit alors d'une FOREIGN KEY
* une date de retour (DATE), date a laquelle la commande a ete retourne
* une date de remboursement (DATE) , date a laquelle la commande a ete rembourse
* une raison (TEXT), la raison pour laquelle la commande a ete retourne.

Dans cette table Chaque ligne est unique car on ne peut pas retourne plusieurs fois la meme commande.

### Comments(Avis/Notes)

Chaque client de notre site peux laisser des avis sur les produits qu'il a achete ceux-ci seront stocke dans une table nomme Comments qui contient les champs suivi :

* un ID (INT), servant de PRIMARY KEY
* l'ID (INT) du client auteur, FOREIGN KEY
* l'ID (INT) du produit au quel il fait reference
* une Note (INT) attribue par le client
* un message (TEXT)
* une Date d'ecriture (DATE)
* un nombre de lecture (like) (INT) ,representant les utilisateur qui confirme l'avis.

## Arborescence

---

* Le fichiers servant a creer toutes les tables se nomme main.sql.
* Les fichiers cvs dans le repertoire CVS permettent d'allimenter les tables.
* Les fichiers dans le repertoire COPY permettent de remplir les tables.
* Les fichiers dans le repertoire REQ contiennent les requetes sur le sites de e-commerces.

## Ressenties

---

### David


### Franc

J'ai apprecier concevoir ce projet avec mon camarade meme-ci cela a ete dur d y concacrer enormement de temps car celui-ci s'ajoutais a une longue liste d'autre projet. Je remercie les enseignants de ce cours pour le temps qu'il nous ont accorde et les connaissances qu'il nous ont apporte .
