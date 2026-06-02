CREATE OR REPLACE FUNCTION fu_validar_email (test TEXT) RETURNS BOOL as $$
BEGIN
  IF test ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,64}$' THEN
    RETURN TRUE;
  END IF;
    RETURN FALSE;
  END;
$$ LANGUAGE plpgsql;
