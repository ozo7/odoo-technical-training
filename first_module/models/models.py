import logging
from odoo import models, fields, api
# create a logger to be used in the object
_logger = logging.getLogger(__name__)

class MotType(models.Model):
    _name = 'vv.mot.type'
    _rec_name = 'mottype' # specifies a column to be shown for the option to link to other records in the frontend
    _description = 'basic grammar type of word'
    _log_access=False
    mottype = fields.Char('type of word')
    explanation = fields.Char('explanation')
    zz_mot_de_langue_ids = fields.One2many(
        'vv.mot.de.langue', 'mottype_id',
        string='words of this grammar type',
    )


class MotDeLangue(models.Model):
    _name = 'vv.mot.de.langue'
    # _rec_name is created by the overriden name_get below.    
    _description = 'a single vocabulary item'   
   
    fr = fields.Char('French')
    de = fields.Char('German')
    en = fields.Char('English')
    mottype_id = fields.Many2one(
         'vv.mot.type', string='grammar type of word',
         ondelete='set null',
    )
    # ==> we do not want the standard many2many because we want to expand this table by custom columns.
    # learners_ids = fields.Many2many(
    #     'res.partner', string='learners',
    # )
    category = fields.Char('none')
    tags = fields.Char('no tags')
    
    def name_get(self):        
        res = []        
        for s in self:
            newname = s.fr + ' || ' + s.de
            #print('>>> new name: %s', newname)            
            res.append((s.id, newname))
        return res


        


class Noun(models.Model):
    _name = 'vv.noun'     
    _description = 'noun that as a word specialty can have a gender'
    _inherits = {'vv.mot.de.langue': 'vv_mot_de_langue_id'}
    _log_access=False

    vv_mot_de_langue_id = fields.Many2one(
        'vv.mot.de.langue',
        string='I am part of this vocabulary word record',
        required=True,
        ondelete='cascade',        
        )
    gender_combo = fields.Many2one('vv.gender.combo', string='gender sequence for the different languages')

class GenderCombo(models.Model):
    _name = 'vv.gender.combo'
    _rec_name = 'combo'  
    _description = 'gender combinations table as reference for nouns'
    _log_access=False

    fr = fields.Char('French')
    de = fields.Char('German')
    combo = fields.Char('combo')
    noun_ids = fields.One2many('vv.noun', 'gender_combo', string='vocabulary word')



# try to create an explicit model to extend the many2many table information
class WordsXLearners(models.Model):
    _name = 'vv.mots.learners'
    _description = 'Words N Learners Relations'
    _log_access=False   # does it really prevent the log audit fields => yes, it does!

    mot_de_langue_id = fields.Many2one(
        'vv.mot.de.langue',
        string='word ID',
        required=True,
    )

    res_partner_id = fields.Many2one(
        'res.partner',
        string='learner ID',
        required=True,
    )

    timesLearnt = fields.Integer(default=0)

