from flask import flash
from app.models.connection import connectToMySQL

class Parque:

    def __init__(self, data):
        self.id = data['id']
        self.nombre_parque = data['nombre_parque']
        self.direccion_parque = data['direccion_parque']
        self.valoracion_parque = data['valoracion_parque']
        self.img_parque = data['img_parque']


    @classmethod
    def todos_parques(cls, user_id):
        query = '''
            select * from parques
            where id not in 
                (select id from parques join users_parques
                on parques.id = users_parques.parque_id
                where user_id = %(user_id)s)
            
        '''
        data = {
            'user_id': user_id,
        }
        results = connectToMySQL().query_db(query, data)
        return results
