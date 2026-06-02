CREATE OR REPLACE FUNCTION fu_verificar_engajamento() RETURNS TABLE(nome VARCHAR, status VARCHAR) AS $$
BEGIN
	RETURN QUERY SELECT
		u.nome,
		CASE
			WHEN (NOW()-u.ultimo_acesso) < INTERVAL '2 days' THEN 'Alto-usuário'::varchar
			WHEN (NOW()-u.ultimo_acesso) < INTERVAL '7 days' THEN 'Médio-usuário'::varchar
			WHEN (NOW()-u.ultimo_acesso) < INTERVAL '30 days' THEN 'Baixo-usuário'::varchar
			WHEN u.ultimo_acesso IS NULL THEN 'Inexistente-usuário'::varchar
		END
	FROM usuario u;
END;
$$ LANGUAGE PLPGSQL;

SELECT * FROM fu_verificar_engajamento()
