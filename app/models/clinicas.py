from flask import flash
from app.models.connection import connectToMySQL

class Clinica:

    def __init__(self, data):
        self.id = data['id']
        self.nombre_clinica = data['nombre_clinica']
        self.direccion_clinica = data['direccion_clinica']
        self.pagina_clinica = data['pagina_clinica']
        self.valoracion_clinica = data['valoracion_clinica']
        self.img_clinica = data['img_clinica']

    @classmethod
    def todas_clinicas(cls, user_id):
        query = '''
            select * from clinicas
            where user_id = 
        '''
        data = {
            'user_id': user_id,
        }
        results = connectToMySQL().query_db(query, data)
        return results