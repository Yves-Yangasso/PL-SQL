DECLARE
  -- Déclaration du curseur
  CURSOR cur_employes IS
    SELECT nom, salaire
    FROM employes
    WHERE departement_id = (SELECT departement_id FROM departements WHERE nomd = 'IT');
    
  v_nom employes.nom%TYPE;
  v_salaire employes.salaire%TYPE;
  v_total NUMBER := 0;
BEGIN
  -- Ouverture du curseur et boucle
  OPEN cur_employes;
  LOOP
    FETCH cur_employes INTO v_nom, v_salaire;
    EXIT WHEN cur_employes%NOTFOUND;
    
    DBMS_OUTPUT.PUT_LINE('Employé : ' || v_nom || ' - Salaire : ' || v_salaire);
    v_total := v_total + 1;
  END LOOP;
  CLOSE cur_employes;
  
  DBMS_OUTPUT.PUT_LINE('Total d''employés en IT : ' || v_total);
EXCEPTION
  WHEN OTHERS THEN
    IF cur_employes%ISOPEN THEN
      CLOSE cur_employes;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Erreur : ' || SQLERRM);
END;
/
