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
-- Name: openacademy_course; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.openacademy_course (
    id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    responsible_id integer
);


ALTER TABLE public.openacademy_course OWNER TO odoo;

--
-- Name: TABLE openacademy_course; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.openacademy_course IS 'OpenAcademy Courses';


--
-- Name: COLUMN openacademy_course.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_course.name IS 'Title';


--
-- Name: COLUMN openacademy_course.description; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_course.description IS 'Description';


--
-- Name: COLUMN openacademy_course.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_course.create_uid IS 'Created by';


--
-- Name: COLUMN openacademy_course.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_course.create_date IS 'Created on';


--
-- Name: COLUMN openacademy_course.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_course.write_uid IS 'Last Updated by';


--
-- Name: COLUMN openacademy_course.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_course.write_date IS 'Last Updated on';


--
-- Name: COLUMN openacademy_course.responsible_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.openacademy_course.responsible_id IS 'Responsible';


--
-- Name: openacademy_course_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.openacademy_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.openacademy_course_id_seq OWNER TO odoo;

--
-- Name: openacademy_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.openacademy_course_id_seq OWNED BY public.openacademy_course.id;


--
-- Name: openacademy_course id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.openacademy_course ALTER COLUMN id SET DEFAULT nextval('public.openacademy_course_id_seq'::regclass);


--
-- Data for Name: openacademy_course; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.openacademy_course (id, name, description, create_uid, create_date, write_uid, write_date, responsible_id) FROM stdin;
71	1 - Spanish	Habla espanhol?	1	2020-01-31 12:25:47.064645	2	2020-01-31 15:35:54.973444	6
70	0 - Reading and Writing	you\nneed\nthese\nbasics	1	2020-01-31 12:25:47.064645	2	2020-01-31 15:36:03.373036	2
72	History of the world 1300	very deep history explanation until the anno 1300	1	2020-01-31 12:25:47.064645	2	2020-01-31 15:36:36.773466	7
73	stars and coastlines	astrology - the real story	1	2020-01-31 12:25:47.064645	2	2020-01-31 15:37:05.214892	2
74	Latin	omnia gallia in tres partes divida est\n\n\nblabla	2	2020-01-31 12:35:39.40397	2	2020-01-31 15:37:30.094193	6
\.


--
-- Name: openacademy_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.openacademy_course_id_seq', 74, true);


--
-- Name: openacademy_course openacademy_course_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.openacademy_course
    ADD CONSTRAINT openacademy_course_pkey PRIMARY KEY (id);


--
-- Name: openacademy_course_responsible_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX openacademy_course_responsible_id_index ON public.openacademy_course USING btree (responsible_id);


--
-- Name: openacademy_course openacademy_course_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.openacademy_course
    ADD CONSTRAINT openacademy_course_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: openacademy_course openacademy_course_responsible_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.openacademy_course
    ADD CONSTRAINT openacademy_course_responsible_id_fkey FOREIGN KEY (responsible_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: openacademy_course openacademy_course_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.openacademy_course
    ADD CONSTRAINT openacademy_course_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

