CREATE
OR REPLACE TRIGGER trg_sal_update BEFORE
UPDATE OF salaire ON employesss FOR EACH ROW
DECLARE v_diff NUMBER;

BEGIN v_diff := :NEW.salaire - :OLD.salaire;

DBMS_OUTPUT.PUT_LINE ('Différence de salaire: ' || v_diff);

END;

/