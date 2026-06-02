CREATE OR REPLACE PROCEDURE pr_criar_usuario_adm (email_adm TEXT, grupo_adm TEXT)
LANGUAGE PLPGSQL AS $$
BEGIN
  IF(fu_validar_cadastro(email_adm)) = FALSE THEN
    INSERT INTO usuario VALUES(DEFAULT, NULL, email_adm, NULL);
    INSERT INTO grupo VALUES(DEFAULT, grupo_adm, TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE);
    INSERT INTO usuario_grupo VALUES((SELECT id FROM usuario WHERE email = email_adm), (SELECT id FROM grupo g WHERE g.nome = grupo_adm));
  END IF;
END;
$$
