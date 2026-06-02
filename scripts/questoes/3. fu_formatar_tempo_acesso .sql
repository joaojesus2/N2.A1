CREATE OR REPLACE FUNCTION fu_formatar_tempo_acesso(tempo TIMESTAMP) RETURNS TEXT AS $$
DECLARE 
  diferenca interval;
BEGIN
  diferenca := NOW() - tempo;
    RETURN CASE
        WHEN diferenca >= INTERVAL '1 year' THEN
            EXTRACT(YEAR FROM diferenca)::INT || ' anos'

        WHEN diferenca >= INTERVAL '1 month' THEN
            EXTRACT(MONTH FROM diferenca)::INT || ' meses'

        WHEN diferenca >= INTERVAL '1 day' THEN
            EXTRACT(DAY FROM diferenca)::INT || ' dias'

        WHEN diferenca >= INTERVAL '1 hour' THEN
            EXTRACT(HOUR FROM diferenca)::INT || ' horas'

        WHEN diferenca >= INTERVAL '1 minute' THEN
            EXTRACT(MINUTE FROM diferenca)::INT || ' minutos'

        ELSE
            EXTRACT(SECOND FROM diferenca)::INT || ' segundos'
    END;
END;
$$ LANGUAGE plpgsql;
