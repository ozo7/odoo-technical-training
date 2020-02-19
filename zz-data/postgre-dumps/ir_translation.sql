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
-- Name: ir_translation; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_translation (
    id integer NOT NULL,
    name character varying NOT NULL,
    res_id integer,
    lang character varying,
    type character varying,
    src text,
    value text,
    module character varying,
    state character varying,
    comments text
);


ALTER TABLE public.ir_translation OWNER TO odoo;

--
-- Name: TABLE ir_translation; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_translation IS 'Translation';


--
-- Name: COLUMN ir_translation.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_translation.name IS 'Translated field';


--
-- Name: COLUMN ir_translation.res_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_translation.res_id IS 'Record ID';


--
-- Name: COLUMN ir_translation.lang; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_translation.lang IS 'Language';


--
-- Name: COLUMN ir_translation.type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_translation.type IS 'Type';


--
-- Name: COLUMN ir_translation.src; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_translation.src IS 'Internal Source';


--
-- Name: COLUMN ir_translation.value; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_translation.value IS 'Translation Value';


--
-- Name: COLUMN ir_translation.module; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_translation.module IS 'Module';


--
-- Name: COLUMN ir_translation.state; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_translation.state IS 'Status';


--
-- Name: COLUMN ir_translation.comments; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_translation.comments IS 'Translation comments';


--
-- Name: ir_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_translation_id_seq OWNER TO odoo;

--
-- Name: ir_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_translation_id_seq OWNED BY public.ir_translation.id;


--
-- Name: ir_translation id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_translation ALTER COLUMN id SET DEFAULT nextval('public.ir_translation_id_seq'::regclass);


--
-- Data for Name: ir_translation; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_translation (id, name, res_id, lang, type, src, value, module, state, comments) FROM stdin;
\.


--
-- Name: ir_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_translation_id_seq', 1, false);


--
-- Name: ir_translation ir_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_translation
    ADD CONSTRAINT ir_translation_pkey PRIMARY KEY (id);


--
-- Name: ir_translation_code_unique; Type: INDEX; Schema: public; Owner: odoo
--

CREATE UNIQUE INDEX ir_translation_code_unique ON public.ir_translation USING btree (type, lang, md5(src)) WHERE ((type)::text = 'code'::text);


--
-- Name: ir_translation_comments_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_translation_comments_index ON public.ir_translation USING btree (comments);


--
-- Name: ir_translation_model_unique; Type: INDEX; Schema: public; Owner: odoo
--

CREATE UNIQUE INDEX ir_translation_model_unique ON public.ir_translation USING btree (type, lang, name, res_id) WHERE ((type)::text = 'model'::text);


--
-- Name: ir_translation_module_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_translation_module_index ON public.ir_translation USING btree (module);


--
-- Name: ir_translation_res_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_translation_res_id_index ON public.ir_translation USING btree (res_id);


--
-- Name: ir_translation_src_md5; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_translation_src_md5 ON public.ir_translation USING btree (md5(src));


--
-- Name: ir_translation_type_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_translation_type_index ON public.ir_translation USING btree (type);


--
-- Name: ir_translation_unique; Type: INDEX; Schema: public; Owner: odoo
--

CREATE UNIQUE INDEX ir_translation_unique ON public.ir_translation USING btree (type, name, lang, res_id, md5(src));


--
-- Name: ir_translation ir_translation_lang_fkey_res_lang; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_translation
    ADD CONSTRAINT ir_translation_lang_fkey_res_lang FOREIGN KEY (lang) REFERENCES public.res_lang(code);


--
-- Name: CONSTRAINT ir_translation_lang_fkey_res_lang ON ir_translation; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON CONSTRAINT ir_translation_lang_fkey_res_lang ON public.ir_translation IS 'FOREIGN KEY(lang) REFERENCES res_lang(code)';


--
-- PostgreSQL database dump complete
--
