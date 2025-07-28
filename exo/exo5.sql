DECLARE
  -- Type RECORD pour la structure d'un employé
  TYPE emp_record IS RECORD (
    id      employes.employee_id%TYPE,
    nom     employes.nom%TYPE,
    salaire employes.salaire%TYPE
  );
  
  -- Type TABLE basé sur le RECORD
  TYPE emp_table_type IS TABLE OF emp_record INDEX BY BINARY_INTEGER;
  
  -- Variable de type TABLE
  v_emp_table emp_table_type;
  
  -- Curseur pour les employés de Finance
  CURSOR cur_finance IS
    SELECT employee_id, nom, salaire
    FROM employes
    WHERE departement_id = (SELECT departement_id FROM departements WHERE nomd = 'Finance');
    
  v_somme_salaire NUMBER := 0;
  v_moyenne NUMBER;
BEGIN
  -- Remplissage de la TABLE via le curseur
  OPEN cur_finance;
  FETCH cur_finance BULK COLLECT INTO v_emp_table;
  CLOSE cur_finance;
  
  -- Parcours de la TABLE
  FOR i IN 1..v_emp_table.COUNT LOOP
    DBMS_OUTPUT.PUT_LINE('Employé : ID ' || v_emp_table(i).id || ' - ' || v_emp_table(i).nom);
    v_somme_salaire := v_somme_salaire + v_emp_table(i).salaire;
  END LOOP;
  
  -- Calcul de la moyenne
  IF v_emp_table.COUNT > 0 THEN
    v_moyenne := v_somme_salaire / v_emp_table.COUNT;
    DBMS_OUTPUT.PUT_LINE('Salaire moyen en Finance : ' || ROUND(v_moyenne, 2));
  ELSE
    DBMS_OUTPUT.PUT_LINE('Aucun employé trouvé en Finance.');
  END IF;
END;
/
