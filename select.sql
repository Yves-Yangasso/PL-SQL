-- fichier : afficher_parents.sql
SET SERVEROUTPUT ON;

BEGIN
  FOR rec IN (SELECT * FROM parent) LOOP
    DBMS_OUTPUT.PUT_LINE(
      'ID: ' || rec.id_parent || ', Nom: ' || rec.nom || ' ' || rec.prenom ||
      ', Téléphone: ' || rec.telephone || ', Adresse: ' || rec.adresse ||
      ', Profession: ' || rec.profession
    );
  END LOOP;
END;
/
