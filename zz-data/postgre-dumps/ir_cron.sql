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
-- Name: ir_cron; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_cron (
    id integer NOT NULL,
    ir_actions_server_id integer NOT NULL,
    cron_name character varying,
    user_id integer NOT NULL,
    active boolean,
    interval_number integer,
    interval_type character varying,
    numbercall integer,
    doall boolean,
    nextcall timestamp without time zone NOT NULL,
    lastcall timestamp without time zone,
    priority integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_cron OWNER TO odoo;

--
-- Name: TABLE ir_cron; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_cron IS 'Scheduled Actions';


--
-- Name: COLUMN ir_cron.ir_actions_server_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.ir_actions_server_id IS 'Server action';


--
-- Name: COLUMN ir_cron.cron_name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.cron_name IS 'Name';


--
-- Name: COLUMN ir_cron.user_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.user_id IS 'Scheduler User';


--
-- Name: COLUMN ir_cron.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.active IS 'Active';


--
-- Name: COLUMN ir_cron.interval_number; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.interval_number IS 'Interval Number';


--
-- Name: COLUMN ir_cron.interval_type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.interval_type IS 'Interval Unit';


--
-- Name: COLUMN ir_cron.numbercall; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.numbercall IS 'Number of Calls';


--
-- Name: COLUMN ir_cron.doall; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.doall IS 'Repeat Missed';


--
-- Name: COLUMN ir_cron.nextcall; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.nextcall IS 'Next Execution Date';


--
-- Name: COLUMN ir_cron.lastcall; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.lastcall IS 'Last Execution Date';


--
-- Name: COLUMN ir_cron.priority; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.priority IS 'Priority';


--
-- Name: COLUMN ir_cron.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.create_uid IS 'Created by';


--
-- Name: COLUMN ir_cron.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.create_date IS 'Created on';


--
-- Name: COLUMN ir_cron.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_cron.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_cron.write_date IS 'Last Updated on';


--
-- Name: ir_cron_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.ir_cron_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_cron_id_seq OWNER TO odoo;

--
-- Name: ir_cron_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.ir_cron_id_seq OWNED BY public.ir_cron.id;


--
-- Name: ir_cron id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_cron ALTER COLUMN id SET DEFAULT nextval('public.ir_cron_id_seq'::regclass);


--
-- Data for Name: ir_cron; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_cron (id, ir_actions_server_id, cron_name, user_id, active, interval_number, interval_type, numbercall, doall, nextcall, lastcall, priority, create_uid, create_date, write_uid, write_date) FROM stdin;
18	353	Post process payment transactions	1	t	10	minutes	-1	\N	2020-02-18 14:16:26	2020-02-18 14:08:21	5	1	2020-02-10 14:36:25.259665	1	2020-02-10 14:36:25.259665
17	352	Currency: rate update	1	t	1	days	-1	f	2020-02-18 14:36:25	2020-02-17 14:36:58	5	1	2020-02-10 14:36:24.270357	1	2020-02-10 14:36:24.270357
20	473	HR Contract: update state	1	t	1	days	-1	\N	2020-02-19 10:46:47	2020-02-18 10:47:05	5	1	2020-02-13 10:46:46.83135	1	2020-02-13 10:46:46.83135
16	351	Account: Journal online sync	1	t	4	hours	-1	f	2020-02-18 14:36:23	2020-02-18 10:47:05	5	1	2020-02-10 14:36:22.568103	1	2020-02-10 14:36:22.568103
3	120	Publisher: Update Notification	1	t	1	weeks	-1	f	2020-02-21 09:41:09	2020-02-14 09:41:19	1000	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
19	445	Procurement: run scheduler	1	t	1	days	-1	f	2020-02-19 11:17:30	2020-02-18 11:17:30	5	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949
23	540	Website Visitor : Archive old visitors	1	t	1	days	-1	f	2020-02-19 11:31:09	2020-02-18 11:42:28	5	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193
13	164	Predictive Lead Scoring: Rebuild Frequencies table	1	t	1	days	-1	f	2020-02-19 09:41:22	2020-02-18 09:55:15	5	1	2020-01-31 09:41:21.344707	1	2020-01-31 09:41:21.344707
1	32	Base: Auto-vacuum internal data	1	t	1	days	-1	\N	2020-02-19 11:38:36	2020-02-18 11:42:28	5	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856
8	136	Mail: Fetchmail Service	1	f	5	minutes	-1	f	2020-01-31 09:41:15	\N	5	1	2020-01-31 09:41:15.076282	1	2020-01-31 09:41:15.076282
12	162	Digest Emails	1	t	1	days	-1	\N	2020-02-19 09:41:21	2020-02-18 09:55:15	5	1	2020-01-31 09:41:20.84505	1	2020-01-31 09:41:20.84505
22	532	Account Report Followup; Execute followup	1	t	1	days	-1	f	2020-02-19 02:00:26	2020-02-18 09:55:15	5	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604
14	341	Account; Post draft entries with auto_post set to True up to today	1	t	1	days	-1	f	2020-02-19 02:00:19	2020-02-18 09:55:15	5	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986
5	122	Notification: Delete Notifications older than 6 Month	1	t	1	days	-1	f	2020-02-19 09:41:09	2020-02-18 09:55:15	5	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
6	129	Users: Notify About Unregistered Users	1	t	1	days	-1	\N	2020-02-19 09:41:13	2020-02-18 09:55:15	5	1	2020-01-31 09:41:12.804175	1	2020-01-31 09:41:12.804175
2	119	Mail: Email Queue Manager	1	t	1	hours	-1	f	2020-02-18 14:41:09	2020-02-18 13:41:27	5	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
4	121	Mail: Notify channel moderators	1	t	1	days	-1	f	2020-02-19 09:41:09	2020-02-18 09:55:15	1000	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465
9	139	Partner Autocomplete : Sync with remote DB	1	t	60	minutes	-1	f	2020-02-18 14:41:16	2020-02-18 13:41:27	5	1	2020-01-31 09:41:16.148376	1	2020-01-31 09:41:16.148376
11	152	SMS: SMS Queue Manager	1	t	1	hours	-1	f	2020-02-18 14:41:20	2020-02-18 13:41:27	5	1	2020-01-31 09:41:19.505211	1	2020-01-31 09:41:19.505211
10	145	Snailmail: process letters queue	1	t	1	hours	-1	f	2020-02-18 14:41:18	2020-02-18 13:41:27	5	1	2020-01-31 09:41:17.860225	1	2020-01-31 09:41:17.860225
7	130	Calendar: Event Reminder	1	t	30	minutes	-1	f	2020-02-18 14:11:13	2020-02-18 13:41:27	5	1	2020-01-31 09:41:13.339435	1	2020-01-31 09:41:13.339435
21	500	Account automatic transfers : Perform transfers	1	t	1	days	-1	\N	2020-02-18 17:20:21	2020-02-17 17:20:21	5	1	2020-02-13 17:20:21.05082	1	2020-02-13 17:20:21.05082
15	348	Invoice OCR: Update All Status	1	t	30	minutes	-1	f	2020-02-18 14:36:22	2020-02-18 14:08:21	5	1	2020-02-10 14:36:21.464776	1	2020-02-10 14:36:21.464776
\.


--
-- Name: ir_cron_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.ir_cron_id_seq', 23, true);


--
-- Name: ir_cron ir_cron_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_cron
    ADD CONSTRAINT ir_cron_pkey PRIMARY KEY (id);


--
-- Name: ir_cron ir_cron_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_cron
    ADD CONSTRAINT ir_cron_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_cron ir_cron_ir_actions_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_cron
    ADD CONSTRAINT ir_cron_ir_actions_server_id_fkey FOREIGN KEY (ir_actions_server_id) REFERENCES public.ir_act_server(id) ON DELETE RESTRICT;


--
-- Name: ir_cron ir_cron_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_cron
    ADD CONSTRAINT ir_cron_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE RESTRICT;


--
-- Name: ir_cron ir_cron_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_cron
    ADD CONSTRAINT ir_cron_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
