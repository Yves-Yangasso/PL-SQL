SET SERVEROUTPUT ON;

DECLARE
  dep VARCHAR2(30) := 'IT';

  CURSOR c_affiche_emp (dep VARCHAR2) IS
    SELECT nom_emp, salaire FROM employes236 
    join department
    ON employes236.departement = department.id_departement
   WHERE nom_departement = dep;

  v_nom    VARCHAR2(50);
  v_salaire NUMBER;

BEGIN
  OPEN c_affiche_emp(dep);
  LOOP
    FETCH c_affiche_emp INTO v_nom, v_salaire;
    EXIT WHEN c_affiche_emp%NOTFOUND;

    DBMS_OUTPUT.PUT_LINE('Nom : ' || v_nom || ' ' || v_salaire);
  END LOOP;
  CLOSE c_affiche_emp;
END;
/
