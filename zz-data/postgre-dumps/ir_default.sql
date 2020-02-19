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
-- Name: ir_default; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_default (
    id integer NOT NULL,
    field_id integer NOT NULL,
    user_id integer,
    company_id integer,
    condition character varying,
    json_value character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_default OWNER TO odoo;

--
-- Name: TABLE ir_default; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_default IS 'Default Values';


--
-- Name: COLUMN ir_default.field_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_default.field_id IS 'Field';


--
-- Name: COLUMN ir_default.user_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_default.user_id IS 'User';


--
-- Name: COLUMN ir_default.company_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_default.company_id IS 'Company';


--
-- Name: COLUMN ir_default.condition; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_default.condition IS 'Condition';


--
-- Name: COLUMN ir_default.json_value; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_default.json_value IS 'Default Value (JSON format)';


--
-- Name: COLUMN ir_default.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_default.create_uid IS 'Created by';


--
-- Name: COLUMN ir_default.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_default.create_date IS 'Created on';


--
-- Name: COLUMN ir_default.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_default.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_default.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_default.write_date IS 'Last Updated on';


--
-- Name: ir_default_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_default_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_default_id_seq OWNER TO odoo;

--
-- Name: ir_default_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_default_id_seq OWNED BY public.ir_default.id;


--
-- Name: ir_default id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_default ALTER COLUMN id SET DEFAULT nextval('public.ir_default_id_seq'::regclass);


--
-- Data for Name: ir_default; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_default (id, field_id, user_id, company_id, condition, json_value, create_uid, create_date, write_uid, write_date) FROM stdin;
1	911	\N	\N	\N	"en_US"	1	2020-01-30 11:38:26.99497	1	2020-01-30 11:38:26.99497
\.


--
-- Name: ir_default_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_default_id_seq', 1, true);


--
-- Name: ir_default ir_default_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_default
    ADD CONSTRAINT ir_default_pkey PRIMARY KEY (id);


--
-- Name: ir_default_company_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_default_company_id_index ON public.ir_default USING btree (company_id);


--
-- Name: ir_default_field_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_default_field_id_index ON public.ir_default USING btree (field_id);


--
-- Name: ir_default_user_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_default_user_id_index ON public.ir_default USING btree (user_id);


--
-- Name: ir_default ir_default_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_default
    ADD CONSTRAINT ir_default_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE CASCADE;


--
-- Name: ir_default ir_default_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_default
    ADD CONSTRAINT ir_default_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_default ir_default_field_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_default
    ADD CONSTRAINT ir_default_field_id_fkey FOREIGN KEY (field_id) REFERENCES public.ir_model_fields(id) ON DELETE CASCADE;


--
-- Name: ir_default ir_default_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_default
    ADD CONSTRAINT ir_default_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE CASCADE;


--
-- Name: ir_default ir_default_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_default
    ADD CONSTRAINT ir_default_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
