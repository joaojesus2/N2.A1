CREATE OR REPLACE PROCEDURE pr_copiar_grupo(nome_origem VARCHAR, nome_final VARCHAR, OUT contagem INT)
LANGUAGE PLPGSQL AS $$
BEGIN
  	INSERT INTO grupo
	VALUES(DEFAULT,nome_final,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT);
	UPDATE grupo destino
 	SET(
    	visualizar_edital,
    	gerenciar_anexo_edital,
    	gerenciar_status,
    	add_edital_manual,
    	gerenciar_grupo_edital,
    	gerenciar_analise_edital,
    	visualizar_historico_analise_edital,
    	realiza_preanalise_tec,
    	gerenciar_etapas_edital,
    	realizar_proposta,
    	gerenciar_historico_analise,
    	gerenciar_consulta,
    	adm
	) = (
		original.visualizar_edital,
    	original.gerenciar_anexo_edital,
    	original.gerenciar_status,
    	original.add_edital_manual,
    	original.gerenciar_grupo_edital,
    	original.gerenciar_analise_edital,
    	original.visualizar_historico_analise_edital,
    	original.realiza_preanalise_tec,
    	original.gerenciar_etapas_edital,
    	original.realizar_proposta,
    	original.gerenciar_historico_analise,
    	original.gerenciar_consulta,
    	original.adm
	)
	FROM grupo original
	WHERE destino.nome = nome_final
	AND original.nome = nome_origem;
	INSERT INTO usuario_grupo
	SELECT
		id_usuario,
		(SELECT id FROM grupo g WHERE g.nome = nome_final)
	FROM usuario_grupo
	WHERE id_grupo = (SELECT id FROM grupo g WHERE g.nome = nome_origem);
	SELECT INTO contagem
    	(visualizar_edital::int +
     	gerenciar_anexo_edital::int +
     	gerenciar_status::int +
     	add_edital_manual::int +
     	gerenciar_grupo_edital::int +
     	gerenciar_analise_edital::int +
     	visualizar_historico_analise_edital::int +
     	realiza_preanalise_tec::int +
     	gerenciar_etapas_edital::int +
     	realizar_proposta::int +
     	gerenciar_historico_analise::int +
     	gerenciar_consulta::int +
     	adm::int)
	FROM grupo WHERE nome = nome_origem;
	RETURN;
END;
$$
