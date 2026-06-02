CREATE OR REPLACE FUNCTION fu_validar_cadastro (test TEXT) RETURNS BOOL as $$
BEGIN
  IF (SELECT COUNT(*) FROM usuario WHERE email = test) = 1 THEN
    RETURN TRUE;
  END IF;
    RETURN FALSE;
  END;
$$ LANGUAGE plpgsql;
