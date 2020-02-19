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
-- Name: ir_act_url; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_act_url (
    url text NOT NULL,
    target character varying NOT NULL
)
INHERITS (public.ir_actions);


ALTER TABLE public.ir_act_url OWNER TO odoo;

--
-- Name: COLUMN ir_act_url.url; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_url.url IS 'Action URL';


--
-- Name: COLUMN ir_act_url.target; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_url.target IS 'Action Target';


--
-- Name: ir_act_url id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_url ALTER COLUMN id SET DEFAULT nextval('public.ir_actions_id_seq'::regclass);


--
-- Data for Name: ir_act_url; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_act_url (id, name, type, help, binding_model_id, binding_type, binding_view_types, create_uid, create_date, write_uid, write_date, url, target) FROM stdin;
3	Home Menu	ir.actions.act_url	\N	\N	action	list,form	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856	/web	self
36	Third-Party Apps	ir.actions.act_url	\N	\N	action	list,form	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856	https://www.odoo.com/apps/modules	new
37	Theme Store	ir.actions.act_url	\N	\N	action	list,form	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856	https://www.odoo.com/apps/themes	new
539	Website	ir.actions.act_url	\N	\N	action	list,form	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193	/	self
556	Website Contact Form	ir.actions.act_url	\N	\N	action	list,form	1	2020-02-14 11:31:15.854012	1	2020-02-14 11:31:15.854012	/contactus	self
\.


--
-- Name: ir_act_url ir_act_url_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_url
    ADD CONSTRAINT ir_act_url_pkey PRIMARY KEY (id);


--
-- Name: ir_act_url ir_act_url_binding_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_url
    ADD CONSTRAINT ir_act_url_binding_model_id_fkey FOREIGN KEY (binding_model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_act_url ir_act_url_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_url
    ADD CONSTRAINT ir_act_url_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_url ir_act_url_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_url
    ADD CONSTRAINT ir_act_url_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
