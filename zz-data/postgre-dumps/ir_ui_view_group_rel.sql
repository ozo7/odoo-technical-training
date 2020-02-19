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
-- Name: ir_ui_view_group_rel; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_ui_view_group_rel (
    view_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.ir_ui_view_group_rel OWNER TO odoo;

--
-- Name: TABLE ir_ui_view_group_rel; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.ir_ui_view_group_rel IS 'RELATION BETWEEN ir_ui_view AND res_groups';


--
-- Data for Name: ir_ui_view_group_rel; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_ui_view_group_rel (view_id, group_id) FROM stdin;
324	1
325	1
326	1
460	1
461	1
492	1
495	1
541	11
543	11
685	25
687	24
735	29
824	22
859	1
912	37
930	37
932	37
933	5
934	37
935	37
936	29
1077	40
1080	40
1085	41
1087	41
1123	42
1124	42
1287	53
1341	29
1343	33
1380	29
1396	1
\.


--
-- Name: ir_ui_view_group_rel ir_ui_view_group_rel_view_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_ui_view_group_rel
    ADD CONSTRAINT ir_ui_view_group_rel_view_id_group_id_key UNIQUE (view_id, group_id);


--
-- Name: ir_ui_view_group_rel_group_id_idx; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_ui_view_group_rel_group_id_idx ON public.ir_ui_view_group_rel USING btree (group_id);


--
-- Name: ir_ui_view_group_rel_view_id_idx; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX ir_ui_view_group_rel_view_id_idx ON public.ir_ui_view_group_rel USING btree (view_id);


--
-- Name: ir_ui_view_group_rel ir_ui_view_group_rel_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_ui_view_group_rel
    ADD CONSTRAINT ir_ui_view_group_rel_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- Name: ir_ui_view_group_rel ir_ui_view_group_rel_view_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_ui_view_group_rel
    ADD CONSTRAINT ir_ui_view_group_rel_view_id_fkey FOREIGN KEY (view_id) REFERENCES public.ir_ui_view(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--
