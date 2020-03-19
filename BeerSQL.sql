USE beer;
#Question 1 
SELECT NUMERO_TICKET FROM ventes WHERE ID_ARTICLE = 500;

#Question 2
SELECT * FROM ticket WHERE DATE_VENTE = "2014-01-15";

#Question 3
SELECT * FROM ticket WHERE DATE_VENTE IN ("2014-01-15", "2014-01-17");

#Question 4
SELECT * FROM article
INNER JOIN ventes ON article.ID_ARTICLE = ventes.ID_ARTICLE
WHERE QUANTITE >= 50;

#Question 5 
 SELECT * FROM ticket
 WHERE DATE_VENTE BETWEEN "2014-03-01" and "2014-03-31";
 
 #Question 6
 SELECT * FROM ticket
WHERE MONTH(DATE_VENTE) = "03" 
OR MONTH(DATE_VENTE) = "04" 
AND ANNEE = 2014;

 #Question 7
SELECT * FROM ticket
WHERE MONTH(DATE_VENTE) = "03" 
OR MONTH(DATE_VENTE) = "06" 
AND ANNEE = 2014;

#Question 8 
SELECT Nom_ARTICLE, NOM_COULEUR FROM article
INNER JOIN couleur ON couleur.ID_Couleur = article.ID_Couleur;

#Question 9
SELECT ID_ARTICLE, NOM_ARTICLE FROM article
WHERE ID_Couleur = NULL;







 
 


