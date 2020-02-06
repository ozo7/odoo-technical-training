from odoo import models, fields

class MotType(models.Model):
    _name = 'mot.type'
    _rec_name = 'mottype' # important for frontend selection and relation
    _description = 'basic grammar type of word'
    mottype = fields.Char('type of word')
    explanation = fields.Char('explanation')
    zz_mot_de_langue_ids = fields.One2many(
        'mot.de.langue', 'mottype_id',
        string='words of this grammar type',
    )


class Gender(models.Model):
    _name = 'mot.gender'
    _rec_name = 'motgender'
    _description = 'grammatic gender of word'
    motgender = fields.Char('gender of word')
    explanation = fields.Char('explanation')

class MotDeLangue(models.Model):
    _name = 'mot.de.langue'
    _description = 'a single vocabulary item'
    fr = fields.Char('French')
    de = fields.Char('German')
    en = fields.Char('English')
    mottype_id = fields.Many2one(
         'mot.type', string='grammar type of word',
         ondelete='set null',
    )
    # ==> we do not want the standard many2many because we want to expand this table by custom columns.
    # learners_ids = fields.Many2many(
    #     'res.partner', string='learners',
    # )
    category = fields.Char('none')
    tags = fields.Char('no tags')

# try to create an explicit model to extend the many2many table information
class WordsXLearners(models.Model):
    _name = 'mots.learners'
    _description = 'Words N Learners Relations'
    _log_access=False   # does it really prevent the log audit fields => yes, it does!

    mot_de_langue_id = fields.Many2one(
        'mot.de.langue',
        string='word ID',
        required=True,
    )

    res_partner_id = fields.Many2one(
        'res.partner',
        string='learner ID',
        required=True,
    )

    timesLearnt = fields.Integer(default=0)

