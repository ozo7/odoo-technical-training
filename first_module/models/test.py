# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.

from odoo import fields, models, api, tools


class ProductProduct(models.Model):
    _inherit = 'product.product'

    def stock_in_location(self, location):
        product_in_location = self.with_context(
            location = location.id,
            active_test = False
        )
        all_products = product_in_location.search([])
        stock_levels = []
        for product in all_products:
            if product.qty_available:
                stock_levels.append((product.name, product.qty_available))
        return stock_levels


class TMotEdit(models.TransientModel):
    _name = 't.mot'
    _description = 'wizard for entering new words'

    fr = fields.Char('French')
    de = fields.Char('German')
    en = fields.Char('English')    
    mottype = fields.Many2one(
         'vv.mot.type', string='grammar type of word',
         ondelete='set null',
    )
    
    def saveWord(self):
        self.ensure_one()
        mot = self.env['vv.mot.de.langue']
        mot.create({
            'en':self.en,
            'fr':self.fr,
            'de':self.de,
            'mottype_id': self.mottype.id,
        })
        # refresh the vocabulary list, get the action that loads the list view of the vocabulary
        ### Olaf: two ways to produce the data to show the view
        # 1 - explicitlz creating the dictionary
        myView = {
            "type": "ir.actions.act_window",
            "res_model": "vv.mot.de.langue",
            "views": [[False, "tree"], [False, "form"]],
            #"domain": [["customer", "=", true]],
        }
        # 2 - getting the action from the database by xml id.
        action = self.env.ref('first_module.mot_de_langue_action')        
        myView = action.read()[0]
        return myView

class VNounsXGenders(models.Model):
    _name = 'v.nouns.x.genders'
    _description = 'view to join nouns and their genders'
    _auto = False

    mot_fr = fields.Char('French')
    mot_de = fields.Char('German')
    g_fr = fields.Char('genderFr')
    g_de = fields.Char('genderDE')
    
    def init(self):        
        tools.drop_view_if_exists(self.env.cr, self._table)
        self.env.cr.execute("""
            CREATE OR REPLACE VIEW v_nouns_x_genders AS (
                SELECT
	 			row_number() OVER () AS id,
	 			m.fr as mot_fr,
	 			gc.fr as g_fr,
	 			m.de as mot_de,
	 			gc.de as g_de
	 			FROM public.vv_mot_de_langue m
                    right join public.vv_noun n
                        on m.id = n.vv_mot_de_langue_id
                    left join public.vv_gender_combo gc
                        on n.gender_combo = gc.id
            )
        """)
       