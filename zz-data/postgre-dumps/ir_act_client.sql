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
-- Name: ir_act_client; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_act_client (
    tag character varying NOT NULL,
    target character varying,
    res_model character varying,
    context character varying NOT NULL,
    params_store bytea
)
INHERITS (public.ir_actions);


ALTER TABLE public.ir_act_client OWNER TO odoo;

--
-- Name: COLUMN ir_act_client.tag; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_client.tag IS 'Client action tag';


--
-- Name: COLUMN ir_act_client.target; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_client.target IS 'Target Window';


--
-- Name: COLUMN ir_act_client.res_model; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_client.res_model IS 'Destination Model';


--
-- Name: COLUMN ir_act_client.context; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_client.context IS 'Context Value';


--
-- Name: COLUMN ir_act_client.params_store; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_client.params_store IS 'Params storage';


--
-- Name: ir_act_client id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_client ALTER COLUMN id SET DEFAULT nextval('public.ir_actions_id_seq'::regclass);


--
-- Data for Name: ir_act_client; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_act_client (id, name, type, help, binding_model_id, binding_type, binding_view_types, create_uid, create_date, write_uid, write_date, tag, target, res_model, context, params_store) FROM stdin;
517	Trial Balance	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.coa.report'}	\N
518	Partner Ledger	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.partner.ledger'}	\N
519	Analytic Report	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.analytic.report'}	\N
530	Assets Report	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:24.718436	1	2020-02-13 17:20:24.718436	account_report	current	\N	{'model': 'account.assets.report'}	\N
531	Customers Statement	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604	account_report_followup	current	\N	{'model': 'account.followup.report'}	\N
537	Check Register	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:27.737555	1	2020-02-13 17:20:27.737555	account_report	current	\N	{'model': 'l10n_us_reports.check.register'}	\N
545	Analytics	ir.actions.client	\N	\N	action	list,form	1	2020-02-14 11:31:03.924193	1	2020-02-14 11:31:03.924193	backend_dashboard	current	\N	{}	\N
115	Discuss	ir.actions.client	\N	\N	action	list,form	1	2020-01-31 09:41:05.996465	1	2020-01-31 09:41:05.996465	mail.discuss	current	mail.channel	{}	\\x7b20202020202020202020202020202020202764656661756c745f6163746976655f6964273a20276d61696c626f785f696e626f7827202020202020202020202020207d
2	Open Settings Menu	ir.actions.client	\N	\N	action	list,form	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856	reload	current	\N	{}	\\x7b276d656e755f6964273a20347d
38	App Store	ir.actions.client	\N	\N	action	list,form	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856	apps	current	\N	{}	\N
39	Updates	ir.actions.client	\N	\N	action	list,form	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856	apps.updates	current	\N	{}	\\x7b7d
266	Reconcile	ir.actions.client	\N	434	action	list	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	manual_reconciliation_view	current	\N	{}	\N
267	Journal Items to Reconcile	ir.actions.client	\N	\N	action	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	manual_reconciliation_view	current	account.move.line	{}	\N
306	Reconciliation on Bank Statements	ir.actions.client	\N	\N	action	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	bank_statement_reconciliation_view	current	account.bank.statement.line	{}	\N
319	Reconciliation	ir.actions.client	\N	\N	action	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	manual_reconciliation_view	current	\N	{}	\N
373	Synchronization process completed	ir.actions.client	\N	\N	action	list,form	1	2020-02-10 14:36:37.012615	1	2020-02-10 14:36:37.012615	yodlee_callback_widget	new	\N	{}	\N
381	Traceability Report	ir.actions.client	\N	\N	action	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	stock_report_generic	current	\N	{'url': '/stock/output_format/stock/active_id', 'model': 'stock.traceability.report'}	\N
504	Profit and Loss	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.financial.html.report', 'id': 1}	\N
505	Balance Sheet	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.financial.html.report', 'id': 2}	\N
506	Executive Summary	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.financial.html.report', 'id': 3}	\N
507	Profit And Loss	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.financial.html.report', 'id': 1}	\N
508	Balance Sheet	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.financial.html.report', 'id': 2}	\N
509	Cash Flow Statement	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.cash.flow.report'}	\N
510	Tax Report	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.generic.tax.report'}	\N
511	Consolidated Journals	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.consolidated.journal'}	\N
512	Bank Reconciliation	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.bank.reconciliation.report'}	\N
513	Bank Reconciliation	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.bank.reconciliation.report'}	\N
514	General Ledger	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.general.ledger'}	\N
515	Aged Receivable	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.aged.receivable'}	\N
516	Aged Payable	ir.actions.client	\N	\N	action	list,form	1	2020-02-13 17:20:22.287249	1	2020-02-13 17:20:22.287249	account_report	current	\N	{'model': 'account.aged.payable'}	\N
\.


--
-- Name: ir_act_client ir_act_client_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_client
    ADD CONSTRAINT ir_act_client_pkey PRIMARY KEY (id);


--
-- Name: ir_act_client ir_act_client_binding_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_client
    ADD CONSTRAINT ir_act_client_binding_model_id_fkey FOREIGN KEY (binding_model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_act_client ir_act_client_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_client
    ADD CONSTRAINT ir_act_client_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_client ir_act_client_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_client
    ADD CONSTRAINT ir_act_client_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
