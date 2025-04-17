PROMPT Veuillez saisir un nombre entier positif :
ACCEPT nb NUMBER

DECLARE
    nb NUMBER := '&nb';
    somme_diviseurs NUMBER := 0;
    i NUMBER := 1;
BEGIN
    WHILE i <= nb / 2 LOOP
        IF MOD(nb, i) = 0 THEN
            somme_diviseurs := somme_diviseurs + i;
        END IF;
        i := i + 1;
    END LOOP;

    IF somme_diviseurs = nb THEN
        DBMS_OUTPUT.PUT_LINE('Le nombre ' || nb || ' est parfait');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Le nombre ' || nb || ' n''est pas parfait');
    END IF;
END;
/