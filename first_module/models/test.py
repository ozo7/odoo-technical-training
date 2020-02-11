
from odoo import fields, models

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


class TMotEdit(models.Model):
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
