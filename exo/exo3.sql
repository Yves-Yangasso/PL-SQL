DECLARE
  a NUMBER := &saisie_a;  
  b NUMBER := &saisie_b;
  x NUMBER;         
  message VARCHAR2(100); 
BEGIN
  IF a != 0 THEN
    x := -b / a;
    message := 'Solution unique : x = ' || ROUND(x, 2);
  
    ELSIF b != 0 THEN
    message := 'Aucune solution (équation impossible)';
  
    ELSE
    message := 'Infinité de solutions (équation indéterminée)';
  END IF;
  
  DBMS_OUTPUT.PUT_LINE('Équation : ' || a || 'x + ' || b || ' = 0');
  DBMS_OUTPUT.PUT_LINE('Résultat : ' || message);
END;
/
