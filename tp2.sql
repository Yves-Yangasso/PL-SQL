PROMPT Veuillez saisir votre nom :
ACCEPT nom CHAR

PROMPT Veuillez saisir votre prénom :
ACCEPT prenom CHAR

PROMPT Veuillez saisir votre année de naissance :
ACCEPT annee NUMBER

DECLARE
    nom VARCHAR2(50) := '&nom';
    prenom VARCHAR2(50) := '&prenom';
    annee NUMBER := &annee;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Bonjour ' || nom || ' ' || prenom || '!');
    DBMS_OUTPUT.PUT_LINE('Vous avez ' || (EXTRACT(YEAR FROM SYSDATE) - annee) || ' ans.');
END;
/
