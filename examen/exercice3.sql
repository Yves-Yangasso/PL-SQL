SET SERVEROUTPUT ON;

BEGIN
  FOR rec IN (SELECT nom_emp, salaire FROM employes236 WHERE salaire > 3000) LOOP

    DBMS_OUTPUT.PUT_LINE('Nom de l''employé : ' || rec.nom_emp || ', Salaire : ' || rec.salaire);

  END LOOP;
END;
/