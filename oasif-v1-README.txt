OASIF v1


Date : 09 juin 2006

------------------------------------
Modifications effectu�es :
------------------------------------


Une nouvelle version de OASIF version 1, est disponible � l'adresse suivante :

http://oasif.educagri.fr/bin/Index.html



ATTENTION :
avant installation, il est pr�f�rable de supprimer les joun�es planifi�es dans les formations existantes
et de les recr�er avec la nouvelle version (ajout de l'attribut "nNumeroModule" dans le sch�ma oasif.xsd). 


Les bugs retourn�s ont �t� corrig�s.

- Le bug concernant la date � l'int�rieur des modules.
- Le picto bleu apparait lorsque qu'un commentaire � �t� saisie.
- Le bug sur les journ�es planifi�s :

La journ�e planifi�e est d�pendantes du module et plac�e � une date absolue, la journ�e ne bougera pas si le module bouge.
Exemple : une journ�e planifi� pour le 9 juin dans le module 1 qui lui, commence le 1 juin, on d�place le d�but du module 1 
au 10 juin,la journ�e du 9 juin restera planifi�, sans les activit�s.

Si on supprime le module 1, les journ�es planifi�s du module disparaitront.
Si on copie un module, les journ�es planifi�s du module seront copi�es � leurs dates de planification.

- roll over sur les objet du planning lors de l'ouverture d'une formation.
- roll over sur frise temporelle.

- Formation generique : une case � cocher � �t� ajouter dans les propriet�s de la formation en remplacement de celle du 
param�trage de la formation.

Il n'y aura pas de journ�es planifi�es dans les formations g�n�riques.

Les liens sur les sites internet respectif de chaque �tablissement ont �t� plac� sur les logos dans la fen�tre "A propos".

Les nouveaux sh�mas XSD sont disponibles � l'adresse suivante :

- XML Brut : http://oasif.educagri.fr/bin/schemas/oasif.xsd
- XML Generique : http://oasif.educagri.fr/bin/schemas/oasif_generique.xsd
