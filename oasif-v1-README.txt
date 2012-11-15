OASIF v1


Date : 09 juin 2006

------------------------------------
Modifications effectuées :
------------------------------------


Une nouvelle version de OASIF version 1, est disponible à l'adresse suivante :

http://oasif.educagri.fr/bin/Index.html



ATTENTION :
avant installation, il est préférable de supprimer les jounées planifiées dans les formations existantes
et de les recréer avec la nouvelle version (ajout de l'attribut "nNumeroModule" dans le schéma oasif.xsd). 


Les bugs retournés ont été corrigés.

- Le bug concernant la date à l'intérieur des modules.
- Le picto bleu apparait lorsque qu'un commentaire à été saisie.
- Le bug sur les journées planifiés :

La journée planifiée est dépendantes du module et placée à une date absolue, la journée ne bougera pas si le module bouge.
Exemple : une journée planifié pour le 9 juin dans le module 1 qui lui, commence le 1 juin, on déplace le début du module 1 
au 10 juin,la journée du 9 juin restera planifié, sans les activités.

Si on supprime le module 1, les journées planifiés du module disparaitront.
Si on copie un module, les journées planifiés du module seront copiées à leurs dates de planification.

- roll over sur les objet du planning lors de l'ouverture d'une formation.
- roll over sur frise temporelle.

- Formation generique : une case à cocher à été ajouter dans les proprietés de la formation en remplacement de celle du 
paramétrage de la formation.

Il n'y aura pas de journées planifiées dans les formations génériques.

Les liens sur les sites internet respectif de chaque établissement ont été placé sur les logos dans la fenêtre "A propos".

Les nouveaux shémas XSD sont disponibles à l'adresse suivante :

- XML Brut : http://oasif.educagri.fr/bin/schemas/oasif.xsd
- XML Generique : http://oasif.educagri.fr/bin/schemas/oasif_generique.xsd
