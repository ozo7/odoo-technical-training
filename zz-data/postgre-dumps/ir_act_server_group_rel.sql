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
-- Name: ir_act_server_group_rel; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_act_server_group_rel (
    act_id integer NOT NULL,
    gid integer NOT NULL
);


ALTER TABLE public.ir_act_server_group_rel OWNER TO odoo;

--
-- Name: TABLE ir_act_server_group_rel; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_act_server_group_rel IS 'RELATION BETWEEN ir_act_server AND res_groups';


--
-- Data for Name: ir_act_server_group_rel; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_act_server_group_rel (act_id, gid) FROM stdin;
\.


--
-- Name: ir_act_server_group_rel ir_act_server_group_rel_act_id_gid_key; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server_group_rel
    ADD CONSTRAINT ir_act_server_group_rel_act_id_gid_key UNIQUE (act_id, gid);


--
-- Name: ir_act_server_group_rel_act_id_idx; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_act_server_group_rel_act_id_idx ON public.ir_act_server_group_rel USING btree (act_id);


--
-- Name: ir_act_server_group_rel_gid_idx; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_act_server_group_rel_gid_idx ON public.ir_act_server_group_rel USING btree (gid);


--
-- Name: ir_act_server_group_rel ir_act_server_group_rel_act_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server_group_rel
    ADD CONSTRAINT ir_act_server_group_rel_act_id_fkey FOREIGN KEY (act_id) REFERENCES public.ir_act_server(id) ON DELETE CASCADE;


--
-- Name: ir_act_server_group_rel ir_act_server_group_rel_gid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_server_group_rel
    ADD CONSTRAINT ir_act_server_group_rel_gid_fkey FOREIGN KEY (gid) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--
