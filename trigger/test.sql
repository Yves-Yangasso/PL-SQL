🔹 Insertion :

INSERT INTO employes (id_emp, nom_emp, poste, salaire, date_embauche)
VALUES (1, 'Aliou Diop', 'Développeur', 500000, SYSDATE);

🔹 Mise à jour :

UPDATE employes SET salaire = 550000 WHERE id_emp = 1;

🔹 Suppression :

DELETE FROM employes WHERE id_emp = 1;

🔍 Vérification :

SELECT * FROM log_modification;

