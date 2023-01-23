from flask import flash
from app.models.connection import connectToMySQL

class Local:

    def __init__(self, data):
        self.id = data['id']
        self.nombre_local = data['nombre_local']
        self.direccion_local = data['direccion_local']
        self.pagina_local = data['pagina_local']
        self.valoracion_local = data['valoracion_local']
        self.img_local = data['img_local']


    @classmethod
    def todos_locales(cls, user_id):
        query = '''
            select * from locales
            where id not in 
                (select id from locales join users_locales
                on locales.id = users_locales.local_id
                where user_id = %(user_id)s)
            
        '''
        data = {
            'user_id': user_id,
        }
        results = connectToMySQL().query_db(query, data)
        return results