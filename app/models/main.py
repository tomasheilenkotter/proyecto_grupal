#from datetime import datetime
from flask import flash
from app.models.connection import connectToMySQL


class Main:

    def __init__(self, data):
        self.id = data['id']
        self.message = data['message']
        self.creator_id = data['creator_id']


    @staticmethod
    def validate(form):
        is_valid = True
        # 1. validamos el mensaje
        
        if len(form['Message']) < 10:
            flash('el mensaje debe tener al menos 10 caracteres', 'error')
            is_valid = False
        
        flash('Solicitud enviada', 'success')
        return is_valid


    @classmethod
    def favorites(cls, user_quote_id):
        # Comentarios favoritos
        query = '''
            select * from quotes join users_quotes
            on quotes.id = users_quotes.quote_user_id
            where user_quote_id = %(user_quote_id)s
            
        '''
        data = {
            'user_quote_id': user_quote_id,
        }
        results = connectToMySQL().query_db(query, data)
        return results


    @classmethod
    def quotable_quotes(cls, user_quote_id):
        # comentarios No favoritos
        query = '''
            select * from quotes
            where id not in 
                (select id from quotes join users_quotes
                on quotes.id = users_quotes.quote_user_id
                where user_quote_id = %(user_quote_id)s)
            
        '''
        data = {
            'user_quote_id': user_quote_id,
        }
        results = connectToMySQL().query_db(query, data)
        return results

    @classmethod
    def drop_quote(cls, user_quote_id, quote_user_id):
        query = '''
            delete from users_quotes
            where user_quote_id = %(user_quote_id)s and quote_user_id = %(quote_user_id)s
        '''
        data = {
            'user_quote_id': user_quote_id,
            'quote_user_id': quote_user_id
        }
        results = connectToMySQL().query_db(query, data)
        return results

    @classmethod
    def delete_quote(cls, user_quote_id, quote_user_id):
        query = '''
            delete quote from users_quotes
            where user_quote_user_id = %(user_quote_user_id)s and quote_user_id = %(quote_user_id)s
        '''
        data = {
            'user_quote_id': user_quote_id,
            'quote_user_id': quote_user_id
        }
        results = connectToMySQL().query_db(query, data)
        return results
    