CREATE OR REPLACE TRIGGER trg_check_mad
BEFORE INSERT OR UPDATE ON employesss
FOR EACH ROW
BEGIN
    IF :NEW.nom_emp = 'MAD' THEN
        RAISE_APPLICATION_ERROR(-20001, 'Le nom "MAD" est réservé et ne peut pas être utilisé.');
    END IF;
END;
/