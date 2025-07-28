SET SERVEROUTPUT ON;

ACCEPT nb NUMBER

DECLARE
    nb NUMBER := '&saisir_un_nombre';

BEGIN
    DBMS_OUTPUT.PUT_LINE('Vous avez saisi le nombre : ' || nb);
    IF nb > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Le nombre ' || nb || ' est positif');
    ELSIF nb < 0 THEN
        DBMS_OUTPUT.PUT_LINE('Le nombre ' || nb || ' est négatif');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Le nombre est zéro');
    END IF;

END;
/