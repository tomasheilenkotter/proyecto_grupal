from flask import request, redirect, render_template, Blueprint, flash, session
from app.models.users import User
from app.models.hoteles import Hotel
from app.decorators import login_required

hoteles = Blueprint('hoteles', __name__, template_folder='templates')

@hoteles.route('/hoteles')
def main_hoteles():
    
    
    #favorites_hoteles = Hotel.favorites_hoteles(session['user']['id'])
    mostrar_hoteles = Hotel.todos_hoteles(session['user']['id'])
    
    #import pdb; pdb.set_trace()
    return render_template('hoteles.html', mostrar_hoteles=mostrar_hoteles)

@hoteles.route('/hoteles/drop/<hotel_id>')
def drop_hotel(hotel_id):
    Hotel.drop_hotel(session['user']['id'], hotel_id)
    return redirect('/hoteles')

@hoteles.route('/hoteles/join/<hotel_id>')
def join_hotel(hotel_id):
    Hotel.join_hotel(session['user']['id'], hotel_id)
    return redirect('/hoteles')