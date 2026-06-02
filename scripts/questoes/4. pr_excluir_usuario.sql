CREATE OR REPLACE PROCEDURE pr_excluir_usuario(identificador INT, OUT status BOOL)
LANGUAGE PLPGSQL AS $$
BEGIN
  IF (SELECT COUNT(g.nome) FROM usuario_grupo ug INNER JOIN grupo g ON g.id = ug.id_grupo WHERE ug.id_usuario = identificador AND g.nome = 'Administrador') = 0
  THEN
    DELETE FROM usuario_grupo WHERE id_usuario = identificador;
    DELETE FROM usuario_papel WHERE id_usuario = identificador;
    DELETE FROM usuario WHERE id = identificador;
    status := TRUE;
    RETURN;
  END IF;
  status := FALSE;
END;
$$
