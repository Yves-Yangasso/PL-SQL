-- Augmenter tous les téléphones commençant par 777 à +236777 en utilisant un curseur avec une boucle FOR.

SET SERVEROUTPUT ON;

BEGIN
  FOR rec IN (SELECT id_parent, telephone FROM parent WHERE telephone LIKE '777%') LOOP
    UPDATE parent
    SET telephone = '+236' || rec.telephone
    WHERE id_parent = rec.id_parent;

    DBMS_OUTPUT.PUT_LINE('Téléphone mis à jour pour ID : ' || rec.id_parent);
  END LOOP;
END;
/
