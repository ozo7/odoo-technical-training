--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: vv_mot_de_langue; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.vv_mot_de_langue (
    id integer NOT NULL,
    fr character varying,
    de character varying,
    en character varying,
    mottype_id integer,
    category character varying,
    tags character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.vv_mot_de_langue OWNER TO odoo;

--
-- Name: TABLE vv_mot_de_langue; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.vv_mot_de_langue IS 'a single vocabulary item';


--
-- Name: COLUMN vv_mot_de_langue.fr; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mot_de_langue.fr IS 'French';


--
-- Name: COLUMN vv_mot_de_langue.de; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mot_de_langue.de IS 'German';


--
-- Name: COLUMN vv_mot_de_langue.en; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mot_de_langue.en IS 'English';


--
-- Name: COLUMN vv_mot_de_langue.mottype_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mot_de_langue.mottype_id IS 'grammar type of word';


--
-- Name: COLUMN vv_mot_de_langue.category; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mot_de_langue.category IS 'none';


--
-- Name: COLUMN vv_mot_de_langue.tags; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mot_de_langue.tags IS 'no tags';


--
-- Name: COLUMN vv_mot_de_langue.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mot_de_langue.create_uid IS 'Created by';


--
-- Name: COLUMN vv_mot_de_langue.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mot_de_langue.create_date IS 'Created on';


--
-- Name: COLUMN vv_mot_de_langue.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mot_de_langue.write_uid IS 'Last Updated by';


--
-- Name: COLUMN vv_mot_de_langue.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.vv_mot_de_langue.write_date IS 'Last Updated on';


--
-- Name: vv_mot_de_langue_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.vv_mot_de_langue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vv_mot_de_langue_id_seq OWNER TO odoo;

--
-- Name: vv_mot_de_langue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.vv_mot_de_langue_id_seq OWNED BY public.vv_mot_de_langue.id;


--
-- Name: vv_mot_de_langue id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_mot_de_langue ALTER COLUMN id SET DEFAULT nextval('public.vv_mot_de_langue_id_seq'::regclass);


--
-- Data for Name: vv_mot_de_langue; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.vv_mot_de_langue (id, fr, de, en, mottype_id, category, tags, create_uid, create_date, write_uid, write_date) FROM stdin;
19	bonjour	guten Morgen	good morning	5	\N	\N	2	2020-02-06 16:54:31.870414	2	2020-02-06 16:54:31.870414
20	jaune	gelb	yellow	3	\N	\N	2	2020-02-06 16:54:31.870414	2	2020-02-06 16:54:31.870414
21	vert	gruen	green	3	\N	\N	2	2020-02-06 16:54:31.870414	2	2020-02-06 16:54:31.870414
22	l'homme	der Mann	man	1	\N	\N	2	2020-02-06 16:54:31.870414	2	2020-02-06 16:54:31.870414
23	la femme	die Frau	woman	1	\N	\N	2	2020-02-06 16:54:31.870414	2	2020-02-06 16:54:31.870414
24	le feu	die Ampel	traffic light	1	\N	\N	2	2020-02-06 16:54:31.870414	2	2020-02-06 16:54:31.870414
25	nager	schwimmen	to swim	2	\N	\N	2	2020-02-06 16:54:31.870414	2	2020-02-06 16:54:31.870414
26	normalement	gewoehnlich	usually	4	\N	\N	2	2020-02-06 16:54:31.870414	2	2020-02-06 16:54:31.870414
27	aujourd'hui	heute	today	4	\N	\N	2	2020-02-06 16:54:31.870414	2	2020-02-06 16:54:31.870414
28	le stade	das Stadion	the stadion	1	\N	\N	2	2020-02-10 09:10:10.386509	2	2020-02-10 09:10:10.386509
29	le drap	das Laken	the sheet	1	\N	\N	2	2020-02-10 09:31:14.268181	2	2020-02-10 09:31:14.268181
30	l'évier	das Waschbecken	the sink	1	\N	\N	2	2020-02-10 09:34:17.672543	2	2020-02-10 09:34:17.672543
31	l'arbre	der Baum	the tree	1	\N	\N	2	2020-02-10 13:57:12.345593	2	2020-02-10 13:57:12.345593
33	la voiture	das Auto	the car	1	\N	\N	2	2020-02-11 14:41:19.575411	2	2020-02-11 14:41:19.575411
34	l'oreille	das Ohr	the ear	1	\N	\N	2	2020-02-11 15:10:08.663286	2	2020-02-11 15:10:08.663286
35	le nez	die Nase	the nose	4	\N	\N	2	2020-02-11 15:17:54.674714	2	2020-02-11 15:18:47.003581
39	la jambe	das Bein	the leg	1	\N	\N	2	2020-02-11 15:46:03.05282	2	2020-02-11 15:46:03.05282
40	le bras	der Arm	the arm	1	\N	\N	2	2020-02-11 15:48:05.016877	2	2020-02-11 15:48:05.016877
41	la tête	der Kopf	the head	1	\N	\N	2	2020-02-11 15:50:26.103893	2	2020-02-11 15:50:26.103893
42	l'œil	das Auge	the eye	1	\N	\N	2	2020-02-11 15:52:18.953877	2	2020-02-11 15:52:18.953877
48	la bouche	der Mund	the mouth	1	\N	\N	2	2020-02-11 16:52:10.483884	2	2020-02-11 16:52:10.483884
49	le dent	der Zahn	the tooth	1	\N	\N	2	2020-02-11 17:01:36.457672	2	2020-02-11 17:01:36.457672
50	la fesse	die Pobacke	the buttock	1	\N	\N	2	2020-02-11 17:03:52.923447	2	2020-02-11 17:12:08.583054
51	l'arc-en-ciel	der Ellbogen	the ellbow	1	\N	\N	2	2020-02-11 17:19:24.989787	2	2020-02-11 17:19:24.989787
\.


--
-- Name: vv_mot_de_langue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.vv_mot_de_langue_id_seq', 51, true);


--
-- Name: vv_mot_de_langue vv_mot_de_langue_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_mot_de_langue
    ADD CONSTRAINT vv_mot_de_langue_pkey PRIMARY KEY (id);


--
-- Name: vv_mot_de_langue vv_mot_de_langue_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_mot_de_langue
    ADD CONSTRAINT vv_mot_de_langue_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: vv_mot_de_langue vv_mot_de_langue_mottype_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_mot_de_langue
    ADD CONSTRAINT vv_mot_de_langue_mottype_id_fkey FOREIGN KEY (mottype_id) REFERENCES public.vv_mot_type(id) ON DELETE SET NULL;


--
-- Name: vv_mot_de_langue vv_mot_de_langue_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.vv_mot_de_langue
    ADD CONSTRAINT vv_mot_de_langue_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
