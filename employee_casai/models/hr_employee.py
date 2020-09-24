#

from odoo import fields, models, api


class HREmployee(models.Model):
    _name = "hr.employee"

    _rec_name = "first_name"

    def compute_full_name(self):
        self.full_name = self.first_name + ' ' + self.last_name

    first_name = fields.Char('Nombre', required=True)
    last_name = fields.Char('Apellido', required=True)
    full_name = fields.Char('Nombre completo', compute=compute_full_name)
    department_id = fields.Many2one('Departamento', 'hr.department')

