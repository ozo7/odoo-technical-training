# -*- coding: utf-8 -*-
from odoo import fields, models

class Learner(models.Model):
    _inherit = 'res.partner'

    # the Many2one is confusing since it should be named none2one or one2one, n'est-ce que pas?
    # I need a table or view that combines the mots de langue with the nouns!
    # => I found the abstract model for this purpose, I will make mot de langue and noun simply inherit from it and then
    # use the abstract model to which the Learners relate to.
    # !! No. After talking to Xavier it is clear that the Abstract Model cannot be used as some kind of 'interface'.
    
    #mots_ids = fields.Many2one('vva.mot.de.langue', string="foreign language word in learning scope", readonly=True)
    