# -*- coding: utf-8 -*-
from odoo import models, fields, api
from random import randint


class LearningSession(models.Model):
    _name = 'vv.learning.session'
    _rec_name = 'id'  # specifies a column to be shown for the option to link to other records in the frontend
    _description = 'learn session, up to 3 words to learn for a single user, with start and end date'
    _log_access = False

    learner_id = fields.Many2one(
        'res.partner', string='learner',
        ondelete='set null',
    )
    started = fields.Date()
    finished = fields.Date()
    mot1_id = fields.Many2one('vv.mot.de.langue')
    mot2_id = fields.Many2one('vv.mot.de.langue')
    mot3_id = fields.Many2one('vv.mot.de.langue')

    mot1c = fields.Integer()
    mot2c = fields.Integer()
    mot3c = fields.Integer()

    mot1ok = fields.Integer()
    mot2ok = fields.Integer()
    mot3ok = fields.Integer()


    mot1user = fields.Char('mot1')
    mot2user = fields.Char('mot2')
    mot3user = fields.Char('mot3')
    

class WizardLearning(models.TransientModel):
    _name = 'vv.wizard.learning'
    _description = 'wizard controlling the learning session'
    _inherit = 'vv.learning.session'

    

    counter = fields.Integer(default=0)
    info = fields.Text(default="just some info", compute="random_load_words")

    state = fields.Selection([('start', 'Start'), ('in_progress', 'Running')], default='start', required=True)


    ### TODO: This is best to be put into the default calculation of the fields.
    ### The default can call a function but the function must be on top of the declared field.
    ### Reference to this: https://github.com/odoo/enterprise/blob/a997ca0abf79952445504ef07075aa887ad29d0b/account_bank_statement_import_qif/wizard/account_bank_statement_import_qif.py#L24
    def random_load_words(self):
        self.ensure_one()
        # self.info = "hello field" + str(self.counter)
        # self.info = str(self.mot1) # returns vv.mot.de.langue()
        # chose random word if mot is empty:
        if not self.mot1_id:
            allWords = self.mot1_id.search([])
            wordCount = len(allWords)
            for i in range(1, 3):
                randomIndex = randint(1, wordCount) - 1
                self.info = str(randomIndex)            
                
                #self.write({'mot3_id': allWords[randomIndex].id})
                self.mot2_id = allWords[randomIndex].id
            

    # clicking on the next button will reload the view
    def wizard_next(self):
        self.ensure_one()
        self.counter = self.counter + 1
        # self.write()
        # action = self.env.ref('first_module.action_wizard_learning')
        # action['domain'] = [('id', '=', self.id)]
        ### TODO: replace reload with a 'state'-driven show/hide flow (field 'state' is used for that usually.)
        self.state = 'in_progress'
        ### TODO: look for a simpler dictionary that will keep the view open. check target and type keys on returned dictionary
        return {
            'type': 'ir.actions.act_window',
            'res_model': 'vv.wizard.learning',
            'view_mode': 'form',
            'view_type': 'form',
            'res_id': self.id,
            'views': [(False, 'form')],
            'target': 'new',
        }
