--
-- PostgreSQL database dump
--

\restrict hUivA1uyBZnBoqqu2E5iGU0wGEfVXDgw7NC3Xgz8kQSzG5nV6hR0kfasP5aeo98

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-06-02 14:01:38

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5050 (class 0 OID 32769)
-- Dependencies: 219
-- Data for Name: grupo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.grupo OVERRIDING SYSTEM VALUE VALUES (1, 'Cadastro de contratos', false, false, false, false, false, true, false, true, false, true, NULL, NULL, false);
INSERT INTO public.grupo OVERRIDING SYSTEM VALUE VALUES (2, 'Contas a receber', false, false, false, false, false, false, true, true, true, true, true, true, false);
INSERT INTO public.grupo OVERRIDING SYSTEM VALUE VALUES (3, 'Liderança de editais', true, true, true, true, true, true, true, true, false, true, false, false, false);
INSERT INTO public.grupo OVERRIDING SYSTEM VALUE VALUES (9, 'Administrador', true, true, true, true, true, true, true, true, true, true, true, true, true);
INSERT INTO public.grupo OVERRIDING SYSTEM VALUE VALUES (10, 'Seleção de editais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false);
INSERT INTO public.grupo OVERRIDING SYSTEM VALUE VALUES (11, 'Validação de CNPJ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false);


--
-- TOC entry 5054 (class 0 OID 32791)
-- Dependencies: 224
-- Data for Name: papel; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.papel OVERRIDING SYSTEM VALUE VALUES (1, 'Analista de proposta');
INSERT INTO public.papel OVERRIDING SYSTEM VALUE VALUES (2, 'Analista técnico');
INSERT INTO public.papel OVERRIDING SYSTEM VALUE VALUES (4, 'Analista de documentos');


--
-- TOC entry 5051 (class 0 OID 32775)
-- Dependencies: 220
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (1, 'Adailton Araujo', 'adailton@positivo.com.br', '2026-05-28 12:27:55.008606');
INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (2, 'Laís Cândido', 'laishc@positivo.com', '2026-06-02 08:12:53.332398');
INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (8, NULL, 'admin@ufg.br', NULL);
INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (9, 'Rodrigo Mendes', 'usuário32024@positivo.com', '2026-05-02 08:12:53.332398');
INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (10, 'Djulia dos Santos', 'djuliads@positivo.com', '2026-05-18 08:12:53.332398');
INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (11, NULL, 'guilhermesousa@positivo.com.br', '2026-05-15 08:12:53.332398');


--
-- TOC entry 5052 (class 0 OID 32780)
-- Dependencies: 221
-- Data for Name: usuario_grupo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario_grupo VALUES (1, 2);
INSERT INTO public.usuario_grupo VALUES (2, 2);
INSERT INTO public.usuario_grupo VALUES (8, 9);
INSERT INTO public.usuario_grupo VALUES (2, 3);
INSERT INTO public.usuario_grupo VALUES (2, 10);
INSERT INTO public.usuario_grupo VALUES (2, 11);
INSERT INTO public.usuario_grupo VALUES (9, 11);
INSERT INTO public.usuario_grupo VALUES (10, 10);
INSERT INTO public.usuario_grupo VALUES (11, 2);
INSERT INTO public.usuario_grupo VALUES (1, 3);
INSERT INTO public.usuario_grupo VALUES (9, 3);
INSERT INTO public.usuario_grupo VALUES (10, 3);
INSERT INTO public.usuario_grupo VALUES (11, 3);


--
-- TOC entry 5057 (class 0 OID 32802)
-- Dependencies: 228
-- Data for Name: usuario_papel; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario_papel VALUES (1, 1);
INSERT INTO public.usuario_papel VALUES (1, 2);
INSERT INTO public.usuario_papel VALUES (1, 4);
INSERT INTO public.usuario_papel VALUES (2, 1);
INSERT INTO public.usuario_papel VALUES (9, 4);
INSERT INTO public.usuario_papel VALUES (10, 2);


--
-- TOC entry 5063 (class 0 OID 0)
-- Dependencies: 223
-- Name: grupo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grupo_id_seq', 20, true);


--
-- TOC entry 5064 (class 0 OID 0)
-- Dependencies: 226
-- Name: papel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.papel_id_seq', 4, true);


--
-- TOC entry 5065 (class 0 OID 0)
-- Dependencies: 227
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_seq', 11, true);


-- Completed on 2026-06-02 14:01:38

--
-- PostgreSQL database dump complete
--

\unrestrict hUivA1uyBZnBoqqu2E5iGU0wGEfVXDgw7NC3Xgz8kQSzG5nV6hR0kfasP5aeo98

