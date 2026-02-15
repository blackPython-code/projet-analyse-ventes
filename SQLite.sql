-----Projet: Analyse des ventes d'une PME
-----Candidat: Mamadou Sall
-----Date: 14/02/2026

---J'ai utilisé la fonction "COALESCE" pour prevenir les valeurs NULL dans les cases 


---Chiffre d'affaire total. 
SELECT SUM(COALESCE(prix * qte, 0)) AS chiffre_affaire_total 
FROM ventes;

--Ventes par produit
SELECT produit, SUM(COALESCE(qte,0)) AS Ventes_par_produit
FROM ventes GROUP BY produit; 

--Chiffre d'affaire par produit
SELECT produit, SUM(COALESCE(prix*qte,0)) AS Chiffre_Affaire_produit
FROM ventes GROUP BY produit; 

--Ventes par region
SELECT region, SUM(COALESCE(qte,0)) As Ventes_par_region 
FROM ventes GROUP BY region;

--Chiffre d'affaire par region
SELECT region, SUM(COALESCE(prix*qte,0)) As Ventes_par_region 
FROM ventes GROUP BY region;