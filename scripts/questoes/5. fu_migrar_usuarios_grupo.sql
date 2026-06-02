CREATE OR REPLACE FUNCTION fu_migrar_usuarios_grupo(grupo_origem VARCHAR, grupo_final VARCHAR) RETURNS TABLE(nomes VARCHAR(30)) AS $$
BEGIN
	DELETE FROM usuario_grupo
	WHERE id_grupo = (SELECT id FROM grupo g WHERE g.nome = grupo_origem)
  	AND id_usuario IN (
     	SELECT id_usuario
      	FROM usuario_grupo
      	WHERE id_grupo = (SELECT id FROM grupo g WHERE g.nome = grupo_final));
	UPDATE usuario_grupo
	SET id_grupo = (SELECT id FROM grupo g WHERE g.nome = grupo_final)
	WHERE id_grupo = (SELECT id FROM grupo g WHERE g.nome = grupo_origem);
	RETURN QUERY 
		SELECT
			u.nome
		FROM usuario_grupo ug
		INNER JOIN usuario u ON u.id = ug.id_usuario
		WHERE id_grupo = (SELECT id FROM grupo g WHERE g.nome = grupo_origem)
			GROUP BY u.nome;
		END;
$$ LANGUAGE plpgsql;

