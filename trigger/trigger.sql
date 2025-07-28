CREATE OR REPLACE TRIGGER trg_log_modificationss
BEFORE INSERT OR UPDATE OR DELETE ON employesss
FOR EACH ROW
BEGIN

  DBMS_OUTPUT.PUT_LINE ('action en cours...');

    IF INSERTING THEN
        -- INSERT INTO log_modification(id_emp, action_type, date_action, user_action)
        -- VALUES (:NEW.id_emp, 'INSERT', SYSDATE, USER);
        DBMS_OUTPUT.PUT_LINE ('insertion effectuee');

    ELSIF UPDATING THEN
        -- INSERT INTO log_modification(id_emp, action_type, date_action, user_action)
        -- VALUES (:NEW.id_emp, 'UPDATE', SYSDATE, USER);
          DBMS_OUTPUT.PUT_LINE ('modification effectuee');

    ELSIF DELETING THEN
        -- INSERT INTO log_modification(id_emp, action_type, date_action, user_action)
        -- VALUES (:OLD.id_emp, 'DELETE', SYSDATE, USER);
          DBMS_OUTPUT.PUT_LINE ('suppression effectuee');
    END IF;
END;
/