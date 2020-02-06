from odoo import models, fields, api


class MotType(models.Model):
    _name = 'vv.mot.type'
    _rec_name = 'mottype' # important for frontend selection and relation
    _description = 'basic grammar type of word'
    _log_access=False
    mottype = fields.Char('type of word')
    explanation = fields.Char('explanation')
    zz_mot_de_langue_ids = fields.One2many(
        'vv.mot.de.langue', 'mottype_id',
        string='words of this grammar type',
    )


class Gender(models.Model):
    _name = 'vv.mot.gender'
    _rec_name = 'motgender'
    _description = 'grammatic gender of word'
    _log_access=False
    motgender = fields.Char('gender of word')
    explanation = fields.Char('explanation')


class GenderCombo(models.Model):
    _name = 'vv.gender.combo'
    _description = 'gender combinations table as reference for nouns'
    _log_access=False

    fr = fields.Char('French')
    de = fields.Char('German')
    noun_ids = fields.One2many('vv.noun', 'gender_combo_id', string='vocabulary word')


class MotDeLangue(models.Model):
    _name = 'vv.mot.de.langue'
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

    mottype_base = fields.Integer('dense value word type and gender')

    mottype = fields.Char(
        compute='_int2wordtype',
        #inverse='_wordtype2int',
        store=False    
    )
    mottype_gender = fields.Char(
        compute='_int2wordtype',
        store=False
    )

    def get_mottype(self, i):
        switcher={
            1:['verb'],
            2:['adjective'],
            3:['adverb'],
            9:['other'],
            10:['noun','f'],
            11:['noun','m'],           
            12:['noun','n'],            
            13:['noun','-'],           
        }
        return switcher.get(i,"Invalid word type id")
    
    # def set_mottype(self, value):
    #     switcher={
    #         'verb':1,
    #         'adjective':2,
    #         'adverb':3,
    #         'other':9,
    #         'noun':10            
    #     }
    #     return switcher.get(value,"Invalid word type id")

    @api.depends('mottype_base')
    def _int2wordtype(self):
        for r in self:
            resultlist = self.get_mottype(r.mottype_base)
            r.mottype = resultlist[0]
            r.mottype_gender = 'not available'
            if r.mottype_base > 9:
                r.mottype_gender = resultlist[1]
    
    def _wordtype2int(self):
        for r in self:
            r.mottype_base = self.set_mottype(r.mottype)

    category = fields.Char('none')
    tags = fields.Char('no tags')

class Noun(models.Model):
    _name = 'vv.noun'
    _description = 'noun that as a word specialty can have a gender'
    _inherit = 'vv.mot.de.langue'

    gender_combo_id = fields.Many2one('vv.gender.combo', string='gender sequence for the different languages')



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

