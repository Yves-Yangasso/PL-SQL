SET SERVEROUTPUT ON;

DECLARE
  v_profession VARCHAR2(50) := 'Enseignante';

  CURSOR c_parents (p_prof VARCHAR2) IS
    SELECT nom, prenom FROM parent
    WHERE profession = p_prof;

  v_nom    VARCHAR2(50);
  v_prenom VARCHAR2(50);
BEGIN
  OPEN c_parents(v_profession);
  LOOP
    FETCH c_parents INTO v_nom, v_prenom;
    EXIT WHEN c_parents%NOTFOUND;

    DBMS_OUTPUT.PUT_LINE('Nom : ' || v_nom || ' ' || v_prenom);
  END LOOP;
  CLOSE c_parents;
END;
/
