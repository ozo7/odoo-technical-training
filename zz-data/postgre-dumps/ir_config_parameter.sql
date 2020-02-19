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
-- Name: ir_config_parameter; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_config_parameter (
    id integer NOT NULL,
    key character varying NOT NULL,
    value text NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_config_parameter OWNER TO odoo;

--
-- Name: TABLE ir_config_parameter; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_config_parameter IS 'System Parameter';


--
-- Name: COLUMN ir_config_parameter.key; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_config_parameter.key IS 'Key';


--
-- Name: COLUMN ir_config_parameter.value; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_config_parameter.value IS 'Value';


--
-- Name: COLUMN ir_config_parameter.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_config_parameter.create_uid IS 'Created by';


--
-- Name: COLUMN ir_config_parameter.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_config_parameter.create_date IS 'Created on';


--
-- Name: COLUMN ir_config_parameter.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_config_parameter.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_config_parameter.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_config_parameter.write_date IS 'Last Updated on';


--
-- Name: ir_config_parameter_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_config_parameter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_config_parameter_id_seq OWNER TO odoo;

--
-- Name: ir_config_parameter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_config_parameter_id_seq OWNED BY public.ir_config_parameter.id;


--
-- Name: ir_config_parameter id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_config_parameter ALTER COLUMN id SET DEFAULT nextval('public.ir_config_parameter_id_seq'::regclass);


--
-- Data for Name: ir_config_parameter; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_config_parameter (id, key, value, create_uid, create_date, write_uid, write_date) FROM stdin;
4	web.base.url	http://localhost:8069	1	2020-01-30 11:38:26.99497	1	2020-01-30 11:38:26.99497
5	base.login_cooldown_after	10	1	2020-01-30 11:38:26.99497	1	2020-01-30 11:38:26.99497
6	base.login_cooldown_duration	60	1	2020-01-30 11:38:26.99497	1	2020-01-30 11:38:26.99497
1	database.secret	206dc204-4485-452a-a1c0-b631cb62a085	1	2020-01-30 11:38:26.99497	1	2020-01-30 11:38:26.99497
2	database.uuid	0e6c5c60-4355-11ea-aefb-a4c3f0b9ea1f	1	2020-01-30 11:38:26.99497	1	2020-01-30 11:38:26.99497
3	database.create_date	2020-01-30 11:38:38	1	2020-01-30 11:38:26.99497	1	2020-01-30 11:38:26.99497
19	database.expiration_date	2020-03-09 09:41:09	1	2020-02-07 09:41:09.170023	1	2020-02-07 09:41:09.170023
20	database.expiration_reason	trial	1	2020-02-07 09:41:09.170023	1	2020-02-07 09:41:09.170023
7	base.template_portal_user_id	5	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
22	hr.hr_presence_control_login	True	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277
8	base_setup.show_effect	True	1	2020-01-31 09:41:01.701278	1	2020-01-31 09:41:01.701278
9	mail.catchall.alias	catchall	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
10	mail.bounce.alias	bounce	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
11	auth_signup.invitation_scope	b2c	1	2020-01-31 09:41:12.804175	1	2020-01-31 09:41:12.804175
12	auth_signup.reset_password	True	1	2020-01-31 09:41:12.804175	1	2020-01-31 09:41:12.804175
13	digest.default_digest_emails	True	1	2020-01-31 09:41:20.84505	1	2020-01-31 09:41:20.84505
14	digest.default_digest_id	1	1	2020-01-31 09:41:20.84505	1	2020-01-31 09:41:20.84505
15	crm.pls_fields	state_id,country_id,phone_state,email_state,source_id	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
16	crm.pls_start_date	2020-01-23	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
17	crm.pls_rebuild_threshold	100	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
18	calendar_sms.last_sms_cron	2020-02-18 13:41:27	1	2020-01-31 09:41:35.568763	1	2020-02-18 13:41:27.20263
21	account_invoice_extract_endpoint	https://iap-extract.odoo.com	1	2020-02-10 14:36:21.464776	1	2020-02-10 14:36:21.464776
\.


--
-- Name: ir_config_parameter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_config_parameter_id_seq', 22, true);


--
-- Name: ir_config_parameter ir_config_parameter_key_uniq; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_config_parameter
    ADD CONSTRAINT ir_config_parameter_key_uniq UNIQUE (key);


--
-- Name: CONSTRAINT ir_config_parameter_key_uniq ON ir_config_parameter; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON CONSTRAINT ir_config_parameter_key_uniq ON public.ir_config_parameter IS 'unique (key)';


--
-- Name: ir_config_parameter ir_config_parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_config_parameter
    ADD CONSTRAINT ir_config_parameter_pkey PRIMARY KEY (id);


--
-- Name: ir_config_parameter_key_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_config_parameter_key_index ON public.ir_config_parameter USING btree (key);


--
-- Name: ir_config_parameter ir_config_parameter_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_config_parameter
    ADD CONSTRAINT ir_config_parameter_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_config_parameter ir_config_parameter_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_config_parameter
    ADD CONSTRAINT ir_config_parameter_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
