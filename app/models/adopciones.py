from flask import flash
from app.models.connection import connectToMySQL

class Adopcion:

    def __init__(self, data):
        self.id = data['id']
        self.nombre_adopcion = data['nombre_adopcion']
        self.direccion_adopcion = data['direccion_adopcion']
        self.pagina_adopcion = data['pagina_adopcion']
        self.valoracion_adopcion = data['valoracion_adopcion']
        self.img_adopcion = data['img_adopcion']


    @classmethod
    def todas_adopciones(cls, user_id):
        query = '''
            select * from adopciones
            where id not in 
                (select id from adopciones join users_adopciones
                on adopciones.id = users_adopciones.adopcion_id
                where user_id = %(user_id)s)
            
        '''
        data = {
            'user_id': user_id,
        }
        results = connectToMySQL().query_db(query, data)
        return results
