from flask import flash
from app.models.connection import connectToMySQL

class Hotel:

    def __init__(self, data):
        self.id = data['id']
        self.nombre_hotel = data['nombre_hotel']
        self.direccion_hotel = data['direccion_hotel']
        self.pagina_hotel = data['pagina_hotel']
        self.valoracion_hotel = data['valoracion_hotel']
        self.img_hotel = data['img_hotel']


    @classmethod
    def todos_hoteles(cls, user_id):
        query = '''
            select * from hoteles
            where id not in 
                (select id from hoteles join users_hoteles
                on hoteles.id = users_hoteles.hotel_id
                where user_id = %(user_id)s)
            
        '''
        data = {
            'user_id': user_id,
        }
        results = connectToMySQL().query_db(query, data)
        return results
