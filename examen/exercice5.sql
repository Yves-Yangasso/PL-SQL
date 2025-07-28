SET SERVEROUTPUT ON;

DECLARE
    v_resultat NUMBER;
    
    FUNCTION calcul_tva (montant IN NUMBER) RETURN NUMBER IS
    BEGIN
        RETURN montant * 0.2;
    END calcul_tva;
BEGIN
 DBMS_OUTPUT.PUT_LINE('Test de la fonction calcul_tva :');
DBMS_OUTPUT.PUT_LINE('La TVA sur le montant 10000 est : ' || calcul_tva(10000));
END;
/