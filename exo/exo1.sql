DECLARE
  a NUMBER := &saisie_a;
  b NUMBER := &saisie_b;
BEGIN
  DBMS_OUTPUT.PUT_LINE('Équation : ' || a || 'x + ' || b || ' = 0');
  DBMS_OUTPUT.PUT_LINE('Résultat : ' ||
    CASE 
      WHEN a != 0 THEN 'Solution unique : x = ' || ROUND(-b / a, 2)
      WHEN b != 0 THEN 'Aucune solution (équation impossible)'
      ELSE 'Infinité de solutions (équation indéterminée)'
    END);
END;
/