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
-- Name: openacademy_session; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.openacademy_session (
    id integer NOT NULL,
    name character varying NOT NULL,
    start_date date,
    duration numeric,
    seats integer,
    instructor_id integer,
    course_id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    active boolean
);


ALTER TABLE public.openacademy_session OWNER TO odoo;

--
-- Name: TABLE openacademy_session; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.openacademy_session IS 'OpenAcademy Sessions';


--
-- Name: COLUMN openacademy_session.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_session.name IS 'Name';


--
-- Name: COLUMN openacademy_session.start_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_session.start_date IS 'Start Date';


--
-- Name: COLUMN openacademy_session.duration; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_session.duration IS 'Duration';


--
-- Name: COLUMN openacademy_session.seats; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_session.seats IS 'Number of seats';


--
-- Name: COLUMN openacademy_session.instructor_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_session.instructor_id IS 'Instructor';


--
-- Name: COLUMN openacademy_session.course_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_session.course_id IS 'Course';


--
-- Name: COLUMN openacademy_session.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_session.create_uid IS 'Created by';


--
-- Name: COLUMN openacademy_session.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_session.create_date IS 'Created on';


--
-- Name: COLUMN openacademy_session.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_session.write_uid IS 'Last Updated by';


--
-- Name: COLUMN openacademy_session.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_session.write_date IS 'Last Updated on';


--
-- Name: COLUMN openacademy_session.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_session.active IS 'Active';


--
-- Name: openacademy_session_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.openacademy_session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.openacademy_session_id_seq OWNER TO odoo;

--
-- Name: openacademy_session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.openacademy_session_id_seq OWNED BY public.openacademy_session.id;


--
-- Name: openacademy_session id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.openacademy_session ALTER COLUMN id SET DEFAULT nextval('public.openacademy_session_id_seq'::regclass);


--
-- Data for Name: openacademy_session; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.openacademy_session (id, name, start_date, duration, seats, instructor_id, course_id, create_uid, create_date, write_uid, write_date, active) FROM stdin;
1	Week 11	2020-02-07	12.25	15	36	73	1	2020-01-31 15:20:49.123885	2	2020-01-31 15:39:56.037378	t
2	Week 15	2020-04-11	10.00	12	36	73	1	2020-01-31 15:20:49.123885	2	2020-01-31 15:40:26.282526	t
3	Week 5	2020-01-27	22.00	8	34	70	2	2020-01-31 15:41:31.448959	2	2020-01-31 15:41:31.448959	t
4	Week 14	2020-03-30	55.00	17	31	72	2	2020-01-31 15:42:22.61897	2	2020-01-31 15:42:22.61897	t
5	week 22	2020-05-25	5.00	2	27	74	2	2020-01-31 16:38:10.075746	2	2020-01-31 16:38:10.075746	t
\.


--
-- Name: openacademy_session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.openacademy_session_id_seq', 5, true);


--
-- Name: openacademy_session openacademy_session_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.openacademy_session
    ADD CONSTRAINT openacademy_session_pkey PRIMARY KEY (id);


--
-- Name: openacademy_session openacademy_session_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.openacademy_session
    ADD CONSTRAINT openacademy_session_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.openacademy_course(id) ON DELETE CASCADE;


--
-- Name: openacademy_session openacademy_session_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.openacademy_session
    ADD CONSTRAINT openacademy_session_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: openacademy_session openacademy_session_instructor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.openacademy_session
    ADD CONSTRAINT openacademy_session_instructor_id_fkey FOREIGN KEY (instructor_id) REFERENCES public.res_partner(id) ON DELETE SET NULL;


--
-- Name: openacademy_session openacademy_session_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.openacademy_session
    ADD CONSTRAINT openacademy_session_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

