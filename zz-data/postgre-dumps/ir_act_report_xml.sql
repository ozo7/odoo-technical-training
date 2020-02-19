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
-- Name: ir_act_report_xml; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.ir_act_report_xml (
    model character varying NOT NULL,
    report_type character varying NOT NULL,
    report_name character varying NOT NULL,
    report_file character varying,
    multi boolean,
    paperformat_id integer,
    print_report_name character varying,
    attachment_use boolean,
    attachment character varying
)
INHERITS (public.ir_actions);


ALTER TABLE public.ir_act_report_xml OWNER TO odoo;

--
-- Name: COLUMN ir_act_report_xml.model; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_report_xml.model IS 'Model Name';


--
-- Name: COLUMN ir_act_report_xml.report_type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_report_xml.report_type IS 'Report Type';


--
-- Name: COLUMN ir_act_report_xml.report_name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_report_xml.report_name IS 'Template Name';


--
-- Name: COLUMN ir_act_report_xml.report_file; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_report_xml.report_file IS 'Report File';


--
-- Name: COLUMN ir_act_report_xml.multi; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_report_xml.multi IS 'On Multiple Doc.';


--
-- Name: COLUMN ir_act_report_xml.paperformat_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_report_xml.paperformat_id IS 'Paper Format';


--
-- Name: COLUMN ir_act_report_xml.print_report_name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_report_xml.print_report_name IS 'Printed Report Name';


--
-- Name: COLUMN ir_act_report_xml.attachment_use; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_report_xml.attachment_use IS 'Reload from Attachment';


--
-- Name: COLUMN ir_act_report_xml.attachment; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.ir_act_report_xml.attachment IS 'Save as Attachment Prefix';


--
-- Name: ir_act_report_xml id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_report_xml ALTER COLUMN id SET DEFAULT nextval('public.ir_actions_id_seq'::regclass);


--
-- Data for Name: ir_act_report_xml; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.ir_act_report_xml (id, name, type, help, binding_model_id, binding_type, binding_view_types, create_uid, create_date, write_uid, write_date, model, report_type, report_name, report_file, multi, paperformat_id, print_report_name, attachment_use, attachment) FROM stdin;
81	Preview Internal Report	ir.actions.report	\N	87	report	list,form	1	2020-01-30 11:38:38.936491	1	2020-01-30 11:38:38.936491	res.company	qweb-pdf	web.preview_internalreport	web.preview_internalreport	f	\N	\N	\N	\N
82	Preview External Report	ir.actions.report	\N	87	report	list,form	1	2020-01-30 11:38:38.936491	1	2020-01-30 11:38:38.936491	res.company	qweb-pdf	web.preview_externalreport	web.preview_externalreport	f	\N	\N	\N	\N
253	Pricelist	ir.actions.report	\N	\N	report	list,form	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054	product.product	qweb-pdf	product.report_pricelist	product.report_pricelist	f	\N	\N	\N	\N
250	Product Barcode (PDF)	ir.actions.report	\N	396	report	list,form	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054	product.product	qweb-pdf	product.report_productbarcode	product.report_productbarcode	f	\N	'Products barcode - %s' % (object.name)	\N	\N
248	Product Label (PDF)	ir.actions.report	\N	396	report	list,form	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054	product.product	qweb-pdf	product.report_productlabel	product.report_productlabel	f	\N	'Products Labels - %s' % (object.name)	\N	\N
251	Product Barcode (PDF)	ir.actions.report	\N	394	report	list,form	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054	product.template	qweb-pdf	product.report_producttemplatebarcode	product.report_producttemplatebarcode	f	\N	'Products barcode - %s' % (object.name)	\N	\N
249	Product Label (PDF)	ir.actions.report	\N	394	report	list,form	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054	product.template	qweb-pdf	product.report_producttemplatelabel	product.report_producttemplatelabel	f	\N	'Products Labels - %s' % (object.name)	\N	\N
252	Product Packaging (PDF)	ir.actions.report	\N	397	report	list,form	1	2020-02-10 14:36:05.152054	1	2020-02-10 14:36:05.152054	product.packaging	qweb-pdf	product.report_packagingbarcode	product.report_packagingbarcode	f	\N	'Products packaging - %s' % (object.name)	\N	\N
322	Original Bills	ir.actions.report	\N	433	report	list	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	account.move	qweb-pdf	account.report_original_vendor_bill	account.report_original_vendor_bill	\N	\N	\N	t	'original_vendor_bill.pdf'
324	Aged Partner Balance	ir.actions.report	\N	\N	report	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	res.partner	qweb-pdf	account.report_agedpartnerbalance	account.report_agedpartnerbalance	f	\N	\N	\N	\N
328	Hash integrity result PDF	ir.actions.report	\N	\N	report	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	res.company	qweb-pdf	account.report_hash_integrity	account.report_hash_integrity	f	\N	\N	\N	\N
321	Invoices	ir.actions.report	\N	433	report	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	account.move	qweb-pdf	account.report_invoice_with_payments	account.report_invoice_with_payments	f	\N	(object._get_report_base_filename())	\N	(object.state == 'posted') and ((object.name or 'INV').replace('/','_')+'.pdf')
323	Invoices without Payment	ir.actions.report	\N	433	report	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	account.move	qweb-pdf	account.report_invoice	account.report_invoice	f	\N	(object._get_report_base_filename())	\N	(object.state == 'posted') and ((object.name or 'INV').replace('/','_')+'.pdf')
325	Journals Audit	ir.actions.report	\N	455	report	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	account.common.journal.report	qweb-pdf	account.report_journal	account.report_journal	f	\N	\N	\N	\N
326	Payment Receipt	ir.actions.report	\N	424	report	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	account.payment	qweb-pdf	account.report_payment_receipt	account.report_payment_receipt	f	\N	\N	\N	\N
327	Statement	ir.actions.report	\N	431	report	list,form	1	2020-02-10 14:36:08.744986	1	2020-02-10 14:36:08.744986	account.bank.statement	qweb-pdf	account.report_statement	account.report_statement	f	\N	\N	\N	\N
33	Model Overview	ir.actions.report	\N	3	report	list,form	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856	ir.model	qweb-pdf	base.report_irmodeloverview	base.report_irmodeloverview	f	\N	\N	\N	\N
362	Purchase Order	ir.actions.report	\N	479	report	list,form	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491	purchase.order	qweb-pdf	purchase.report_purchaseorder	purchase.report_purchaseorder	f	\N	                 (object.state in ('draft', 'sent') and 'Request for Quotation - %s' % (object.name) or                 'Purchase Order - %s' % (object.name))	\N	\N
40	Technical guide	ir.actions.report	\N	62	report	list,form	1	2020-01-30 11:38:26.99497	1	2020-01-31 09:58:20.76856	ir.module.module	qweb-pdf	base.report_irmodulereference	base.report_irmodulereference	f	\N	\N	\N	\N
363	Request for Quotation	ir.actions.report	\N	479	report	list,form	1	2020-02-10 14:36:28.146491	1	2020-02-10 14:36:28.146491	purchase.order	qweb-pdf	purchase.report_purchasequotation	purchase.report_purchasequotation	f	\N	'Request for Quotation - %s' % (object.name)	\N	\N
377	Print Check (Top)	ir.actions.report	\N	\N	report	list,form	1	2020-02-10 14:36:44.389302	1	2020-02-10 14:36:44.389302	account.payment	qweb-pdf	l10n_us_check_printing.print_check_top	l10n_us_check_printing.print_check_top	f	4	'Check Top - %s' % (object.partner_id.name or '',)	t	'check_'+(object.partner_id and object.partner_id.name or 'Internal')+'_'+(object.name)+'_top.pdf'
378	Print Check (Middle)	ir.actions.report	\N	\N	report	list,form	1	2020-02-10 14:36:44.389302	1	2020-02-10 14:36:44.389302	account.payment	qweb-pdf	l10n_us_check_printing.print_check_middle	l10n_us_check_printing.print_check_middle	f	4	'Check Middle - %s' % (object.partner_id.name or '',)	t	'check_'+(object.partner_id and object.partner_id.name or 'Internal')+'_'+(object.name)+'_middle.pdf'
379	Print Check (Bottom)	ir.actions.report	\N	\N	report	list,form	1	2020-02-10 14:36:44.389302	1	2020-02-10 14:36:44.389302	account.payment	qweb-pdf	l10n_us_check_printing.print_check_bottom	l10n_us_check_printing.print_check_bottom	f	4	'Check Bottom - %s' % (object.partner_id.name or '',)	t	'check_'+(object.partner_id and object.partner_id.name or 'Internal')+'_'+(object.name)+'_bottom.pdf'
392	Product Routes Report	ir.actions.report	\N	\N	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	product.template	qweb-html	stock.report_stock_rule	stock.report_stock_rule	f	\N	\N	\N	\N
384	Picking Operations	ir.actions.report	\N	498	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	stock.picking	qweb-pdf	stock.report_picking	stock.report_picking_operations	f	\N	'Picking Operations - %s - %s' % (object.partner_id.name or '', object.name)	\N	\N
385	Delivery Slip	ir.actions.report	\N	498	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	stock.picking	qweb-pdf	stock.report_deliveryslip	stock.report_deliveryslip	f	\N	'Delivery Slip - %s - %s' % (object.partner_id.name or '', object.name)	\N	\N
398	Barcodes (ZPL)	ir.actions.report	\N	498	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	stock.picking	qweb-text	stock.label_transfer_template_view_zpl	stock.label_transfer_template_view_zpl	f	\N	\N	\N	\N
399	Barcodes (PDF)	ir.actions.report	\N	498	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	stock.picking	qweb-pdf	stock.label_transfer_template_view_pdf	stock.label_transfer_template_view_pdf	f	\N	\N	\N	\N
386	Inventory	ir.actions.report	\N	490	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	stock.inventory	qweb-pdf	stock.report_inventory	stock.report_inventory	f	\N	'Inventory - %s' % (object.name)	\N	\N
387	Package Barcode with Content	ir.actions.report	\N	500	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	stock.quant.package	qweb-pdf	stock.report_package_barcode	stock.report_package_barcode	f	\N	\N	\N	\N
388	Package Barcode (PDF)	ir.actions.report	\N	500	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	stock.quant.package	qweb-pdf	stock.report_package_barcode_small	stock.report_package_barcode	f	\N	\N	\N	\N
400	Package Barcode (ZPL)	ir.actions.report	\N	500	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	stock.quant.package	qweb-text	stock.label_package_template_view	stock.label_package_template_view	f	\N	\N	\N	\N
389	Location Barcode	ir.actions.report	\N	492	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	stock.location	qweb-pdf	stock.report_location_barcode	stock.report_location_barcode	f	\N	'Location - %s' % object.name	\N	\N
390	Lot/Serial Number (PDF)	ir.actions.report	\N	496	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	stock.production.lot	qweb-pdf	stock.report_lot_label	stock.report_lot_label	f	\N	'Lot-Serial - %s' % object.name	\N	\N
397	Lot/Serial Number (ZPL)	ir.actions.report	\N	496	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	stock.production.lot	qweb-text	stock.label_lot_template_view	stock.label_lot_template_view	f	\N	\N	\N	\N
391	Operation type (PDF)	ir.actions.report	\N	497	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	stock.picking.type	qweb-pdf	stock.report_picking_type_label	stock.report_picking_type_label	f	\N	'Operation-type - %s' % object.name	\N	\N
402	Operation type (ZPL)	ir.actions.report	\N	497	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	stock.picking.type	qweb-text	stock.label_picking_type_view	stock.label_picking_type_view	f	\N	\N	\N	\N
393	Product Label (ZPL)	ir.actions.report	\N	394	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	product.template	qweb-text	stock.label_product_template_view	stock.label_product_template_view	f	\N	\N	\N	\N
395	Product Barcode (ZPL)	ir.actions.report	\N	394	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	product.template	qweb-text	stock.label_barcode_product_template_view	stock.label_barcode_product_template_view	f	\N	\N	\N	\N
394	Product Label (ZPL)	ir.actions.report	\N	396	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	product.product	qweb-text	stock.label_product_product_view	stock.label_product_product_view	f	\N	\N	\N	\N
396	Product Barcode (ZPL)	ir.actions.report	\N	396	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	product.product	qweb-text	stock.label_barcode_product_product_view	stock.label_barcode_product_product_view	f	\N	\N	\N	\N
401	Product Packaging (ZPL)	ir.actions.report	\N	397	report	list,form	1	2020-02-11 11:17:24.480949	1	2020-02-11 11:17:24.480949	product.packaging	qweb-text	stock.label_product_packaging_view	stock.label_product_packaging_view	f	\N	\N	\N	\N
464	Print Badge	ir.actions.report	\N	539	report	list,form	1	2020-02-13 10:46:42.952277	1	2020-02-13 10:46:42.952277	hr.employee	qweb-pdf	hr.print_employee_badge	hr.print_employee_badge	f	\N	'Print Badge - %s' % (object.name).replace('/', '')	\N	\N
497	Expenses Report	ir.actions.report	\N	551	report	list,form	1	2020-02-13 10:46:49.176336	1	2020-02-13 10:46:49.176336	hr.expense.sheet	qweb-pdf	hr_expense.report_expense_sheet	hr_expense.report_expense_sheet	f	\N	'Expenses - %s - %s' % (object.employee_id.name, (object.name).replace('/', ''))	\N	\N
536	Print Follow-up Letter	ir.actions.report	\N	\N	report	list,form	1	2020-02-13 17:20:26.207604	1	2020-02-13 17:20:26.207604	res.partner	qweb-pdf	account_followup.report_followup_print_all	account_followup.report_followup_print_all	f	\N	'Followups'	\N	\N
\.


--
-- Name: ir_act_report_xml ir_act_report_xml_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_report_xml
    ADD CONSTRAINT ir_act_report_xml_pkey PRIMARY KEY (id);


--
-- Name: ir_act_report_xml ir_act_report_xml_binding_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_report_xml
    ADD CONSTRAINT ir_act_report_xml_binding_model_id_fkey FOREIGN KEY (binding_model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_act_report_xml ir_act_report_xml_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_report_xml
    ADD CONSTRAINT ir_act_report_xml_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_report_xml ir_act_report_xml_paperformat_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_report_xml
    ADD CONSTRAINT ir_act_report_xml_paperformat_id_fkey FOREIGN KEY (paperformat_id) REFERENCES public.report_paperformat(id) ON DELETE SET NULL;


--
-- Name: ir_act_report_xml ir_act_report_xml_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.ir_act_report_xml
    ADD CONSTRAINT ir_act_report_xml_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
