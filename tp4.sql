DECLARE
  nom    VARCHAR2(50);
  email VARCHAR2(50);
  id_max NUMBER;
BEGIN
  SELECT MAX(id) INTO id_max FROM users;

  FOR i IN 1..id_max LOOP
    IF MOD(i, 2) = 0 THEN
        SELECT nom, email INTO nom, email FROM users WHERE id = i;
        DBMS_OUTPUT.PUT_LINE('ID : '|| i||'Nom : ' || nom || ', Email : ' || email);
    END IF;
  END LOOP;
 
 exception
   when no_data_found then
     DBMS_OUTPUT.PUT_LINE('Aucun enregistrement trouvé.');
END;
/