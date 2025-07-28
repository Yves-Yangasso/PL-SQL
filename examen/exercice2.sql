SET SERVEROUTPUT ON;

ACCEPT nb NUMBER

DECLARE
    nb NUMBER := '&nb';
    cpt NUMBER := 0;
    i NUMBER := 1;
    j NUMBER := 1;
BEGIN
    WHILE i <= nb LOOP
      
        WHILE j <= i LOOP
            IF MOD(i, j) = 0 THEN
                cpt := cpt + 1;
            END IF;
            j := j + 1;
        END LOOP;

        IF cpt = 2 THEN
            DBMS_OUTPUT.PUT_LINE('Le nombre ' || i || ' est premier');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Le nombre ' || i || ' n''est pas premier');
        END IF;

        i := i + 1;
        j := 1;
        cpt := 0;

    END LOOP;
   
END;
/