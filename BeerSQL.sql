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
SELECT NOM_ARTICLE, ID_ARTICLE FROM article
WHERE ID_Couleur IS NULL;

#Question 10 
SELECT NUMERO_TICKET, SUM(QUANTITE) AS QUANTITETOTAL FROM ventes
GROUP BY NUMERO_TICKET
ORDER BY QUANTITETOTAL DESC;
 
 #Question 11
SELECT NUMERO_TICKET, SUM(QUANTITE) AS QUANTITETOTAL FROM ventes
GROUP BY NUMERO_TICKET
HAVING QUANTITETOTAL > 500 
ORDER BY QUANTITETOTAL DESC;

 #Question 12
SELECT NUMERO_TICKET, SUM(QUANTITE) AS QUANTITETOTAL FROM ventes
WHERE QUANTITE < 50
GROUP BY NUMERO_TICKET
HAVING QUANTITETOTAL > 500 
ORDER BY QUANTITETOTAL DESC;

#Question 13
SELECT ID_ARTICLE, NOM_TYPE, VOLUME, TITRAGE FROM article
INNER JOIN type ON type.ID_TYPE = article.ID_TYPE
where type.NOM_TYPE like 'trappiste'
ORDER BY NOM_TYPE LIMIT 50000;

#Question 14
SELECT NOM_MARQUE, NOM_CONTINENT FROM marque
INNER JOIN pays ON pays.ID_PAYS = marque.ID_PAYS
INNER JOIN continent ON continent.ID_CONTINENT = pays.ID_CONTINENT
WHERE continent.NOM_CONTINENT like 'Afrique';

#Question 15
SELECT NOM_ARTICLE, NOM_MARQUE, NOM_CONTINENT FROM marque
INNER JOIN pays ON pays.ID_PAYS = marque.ID_PAYS
INNER JOIN continent ON continent.ID_CONTINENT = pays.ID_CONTINENT
INNER JOIN article ON article.ID_MARQUE = marque.ID_MARQUE
WHERE continent.NOM_CONTINENT like 'Afrique';

#Question 16
SELECT ticket.ANNEE, ticket.NUMERO_TICKET, SUM(PRIX_ACHAT*1.15) as PRIX_VENTE FROM ticket
INNER JOIN ventes ON ventes.ANNEE = ticket.ANNEE AND ticket.NUMERO_TICKET = ventes.NUMERO_TICKET
INNER JOIN article ON article.ID_ARTICLE = ventes.ID_ARTICLE
GROUP BY NUMERO_TICKET;

#Question 17
SELECT ventes.ANNEE, ROUND(SUM((PRIX_ACHAT*1.15)*QUANTITE),2) as CA FROM ventes
INNER JOIN article ON article.ID_ARTICLE = ventes.ID_ARTICLE
GROUP BY ANNEE;

#Question 18
SELECT NOM_ARTICLE, ANNEE, QUANTITE FROM ventes
INNER JOIN article ON article.ID_ARTICLE = ventes.ID_ARTICLE
WHERE ANNEE = 2016
GROUP BY Nom_ARTICLE
ORDER BY NOM_ARTICLE;

#Question 19
SELECT ventes.ID_ARTICLE, NOM_ARTICLE, SUM(QUANTITE) AS VENTES_PAR_ARTICLE, ANNEE
FROM ventes
INNER JOIN article ON ventes.ID_ARTICLE = article.ID_ARTICLE
WHERE ANNEE BETWEEN 2014 AND 2016
GROUP BY article.id_article, annee
ORDER BY ANNEE, ventes.ID_ARTICLE;





