CREATE OR REPLACE TRIGGER trg_check_salairesss
BEFORE INSERT OR UPDATE ON employesss
FOR EACH ROW
BEGIN
    IF :NEW.salaire > 1000000 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Le salaire ne peut pas dépasser 1 000 000 FCFA');
    END IF;
END;
/