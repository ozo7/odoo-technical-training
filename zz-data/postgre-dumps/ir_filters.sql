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
-- Name: ir_filters; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_filters (
    id integer NOT NULL,
    name character varying NOT NULL,
    user_id integer,
    domain text NOT NULL,
    context text NOT NULL,
    sort text NOT NULL,
    model_id character varying NOT NULL,
    is_default boolean,
    action_id integer,
    active boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_filters OWNER TO odoo;

--
-- Name: TABLE ir_filters; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_filters IS 'Filters';


--
-- Name: COLUMN ir_filters.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_filters.name IS 'Filter Name';


--
-- Name: COLUMN ir_filters.user_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_filters.user_id IS 'User';


--
-- Name: COLUMN ir_filters.domain; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_filters.domain IS 'Domain';


--
-- Name: COLUMN ir_filters.context; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_filters.context IS 'Context';


--
-- Name: COLUMN ir_filters.sort; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_filters.sort IS 'Sort';


--
-- Name: COLUMN ir_filters.model_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_filters.model_id IS 'Model';


--
-- Name: COLUMN ir_filters.is_default; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_filters.is_default IS 'Default Filter';


--
-- Name: COLUMN ir_filters.action_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_filters.action_id IS 'Action';


--
-- Name: COLUMN ir_filters.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_filters.active IS 'Active';


--
-- Name: COLUMN ir_filters.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_filters.create_uid IS 'Created by';


--
-- Name: COLUMN ir_filters.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_filters.create_date IS 'Created on';


--
-- Name: COLUMN ir_filters.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_filters.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_filters.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_filters.write_date IS 'Last Updated on';


--
-- Name: ir_filters_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_filters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_filters_id_seq OWNER TO odoo;

--
-- Name: ir_filters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_filters_id_seq OWNED BY public.ir_filters.id;


--
-- Name: ir_filters id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_filters ALTER COLUMN id SET DEFAULT nextval('public.ir_filters_id_seq'::regclass);


--
-- Data for Name: ir_filters; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_filters (id, name, user_id, domain, context, sort, model_id, is_default, action_id, active, create_uid, create_date, write_uid, write_date) FROM stdin;
1	openacad	2	["|", "|", ["summary", "ilike", "openaca"], ["shortdesc", "ilike", "openaca"], ["name", "ilike", "openaca"]]	{}	[]	ir.module.module	f	35	t	2	2020-01-30 12:29:15.748873	2	2020-01-30 12:29:15.748873
2	olaf	2	["&", ("application", "=", True), "|", "|", ["summary", "ilike", "Olaf"], ["shortdesc", "ilike", "Olaf"], ["name", "ilike", "Olaf"]]	{}	[]	ir.module.module	f	35	t	2	2020-02-05 10:16:07.235303	2	2020-02-05 10:16:07.235303
3	By Salespersons	\N	[]	{'group_by': ['invoice_date:month', 'invoice_user_id']}	[]	account.invoice.report	\N	\N	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
4	By Product	\N	[]	{'group_by': ['invoice_date:month', 'product_id'], 'set_visible':True, 'residual_invisible':True}	[]	account.invoice.report	\N	\N	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
5	By Product Category	\N	[]	{'group_by': ['invoice_date:month', 'product_categ_id'], 'residual_invisible':True}	[]	account.invoice.report	\N	\N	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
6	By Credit Note	\N	[('type', '=', 'out_refund')]	{'group_by': ['invoice_date:month', 'invoice_user_id']}	[]	account.invoice.report	\N	\N	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
7	By Country	\N	[]	{'group_by': ['invoice_date:month', 'country_id']}	[]	account.invoice.report	\N	\N	t	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
8	Monthly Purchases	\N	[('state','!=','cancel')]	{}	[]	purchase.report	\N	\N	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
9	Price Per Vendor	\N	[('state','!=','draft'),('state','!=','cancel')]	{'group_by': ['partner_id'], 'col_group_by': ['product_id'], 'measures': ['price_average']}	[]	purchase.report	\N	\N	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
10	Average Delivery Time	\N	[('state','!=','draft'),('state','!=','cancel')]	{'group_by': ['partner_id'], 'measures': ['delay_pass']}	[]	purchase.report	\N	\N	t	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491
\.


--
-- Name: ir_filters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_filters_id_seq', 10, true);


--
-- Name: ir_filters ir_filters_name_model_uid_unique; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_filters
    ADD CONSTRAINT ir_filters_name_model_uid_unique UNIQUE (name, model_id, user_id, action_id);


--
-- Name: CONSTRAINT ir_filters_name_model_uid_unique ON ir_filters; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON CONSTRAINT ir_filters_name_model_uid_unique ON public.ir_filters IS 'unique (name, model_id, user_id, action_id)';


--
-- Name: ir_filters ir_filters_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_filters
    ADD CONSTRAINT ir_filters_pkey PRIMARY KEY (id);


--
-- Name: ir_filters_name_model_uid_unique_action_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE UNIQUE INDEX ir_filters_name_model_uid_unique_action_index ON public.ir_filters USING btree (lower((name)::text), model_id, COALESCE(user_id, '-1'::integer), COALESCE(action_id, '-1'::integer));


--
-- Name: ir_filters ir_filters_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_filters
    ADD CONSTRAINT ir_filters_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_filters ir_filters_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_filters
    ADD CONSTRAINT ir_filters_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE CASCADE;


--
-- Name: ir_filters ir_filters_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_filters
    ADD CONSTRAINT ir_filters_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
