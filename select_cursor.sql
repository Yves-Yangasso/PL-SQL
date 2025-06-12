-- Active l'affichage dans SQL*Plus  ** afficher chaque parent avec son nom complet et sa profession.
SET SERVEROUTPUT ON;

DECLARE
  CURSOR c_parents IS
    SELECT nom, prenom, profession FROM parent;

  v_nom        VARCHAR2(50);
  v_prenom     VARCHAR2(50);
  v_profession VARCHAR2(50);
BEGIN
  OPEN c_parents;
  LOOP
    FETCH c_parents INTO v_nom, v_prenom, v_profession;
    EXIT WHEN c_parents%NOTFOUND;

    DBMS_OUTPUT.PUT_LINE('Nom : ' || v_nom || ' ' || v_prenom || ', Profession : ' || v_profession);
  END LOOP;
  CLOSE c_parents;
END;
/
