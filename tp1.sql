DECLARE
  v_nom VARCHAR2(50) := 'Samba';
  v_salaire NUMBER := 2500;
BEGIN
  DBMS_OUTPUT.PUT_LINE('Nom : ' || v_nom);
  DBMS_OUTPUT.PUT_LINE('Salaire : ' || v_salaire);
END;
/
