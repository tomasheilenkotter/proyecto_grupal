from flask import flash
from app.models.connection import connectToMySQL

class Peluqueria:

    def __init__(self, data):
        self.id = data['id']
        self.nombre_peluqueria = data['nombre_peluqueria']
        self.direccion_peluqueria = data['direccion_peluqueria']
        self.pagina_peluqueria = data['pagina_peluqueria']
        self.valoracion_peluqueria = data['valoracion_peluqueria']
        self.img_peluqueria = data['img_peluqueria']


    @classmethod
    def todas_peluquerias(cls, user_id):
        query = '''
            select * from peluquerias
            where id not in 
            (select id from peluquerias join users_peluquerias
            on peluquerias.id = users_peluquerias.peluqueria_id
            where user_id = %(user_id)s)
        
        '''
        data = {
            'user_id': user_id,
        }
        results = connectToMySQL().query_db(query, data)
        return results
