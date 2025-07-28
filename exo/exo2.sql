SET SERVEROUTPUT ON

ACCEPT nom PROMPT 'Nom : '
ACCEPT prenom PROMPT 'Prénom : '
ACCEPT date_naissance PROMPT 'Date naissance (JJ/MM/AAAA) : '
ACCEPT montant_inscription PROMPT 'Montant inscription : '
ACCEPT mensualite PROMPT 'Mensualité : '

DECLARE
    v_nom VARCHAR2(50) := '&nom';
    v_prenom VARCHAR2(50) := '&prenom';
    v_naissance DATE := TO_DATE('&date_naissance', 'DD/MM/YYYY');
    v_montant_inscription NUMBER := TO_NUMBER('&montant_inscription');
    v_mensualite NUMBER := TO_NUMBER('&mensualite');
BEGIN
    DBMS_OUTPUT.PUT_LINE('Nom complet : ' || v_prenom || ' ' || v_nom);
    DBMS_OUTPUT.PUT_LINE('Date de naissance : ' || TO_CHAR(v_naissance, 'DD/MM/YYYY'));
    DBMS_OUTPUT.PUT_LINE('Montant inscription: ' || v_montant_inscription || ' FCFA');
    DBMS_OUTPUT.PUT_LINE('Mensualité: ' || v_mensualite || ' FCFA x ' || c_nombre_mois || ' mois');
    DBMS_OUTPUT.PUT_LINE('Total à payer : ' || (v_montant_inscription + v_mensualite * 10));
END;
/

