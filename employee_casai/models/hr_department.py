from odoo import fields, models, api


class HRDepartment(models.Model):
    _name = "hr.department"

    name = fields.Char('Nombre del departamento', required=True)
    description = fields.Char("Descripción")
    