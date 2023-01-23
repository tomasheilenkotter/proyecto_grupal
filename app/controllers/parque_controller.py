from flask import request, redirect, render_template, Blueprint, flash, session
from app.models.users import User
from app.models.parques import Parque
from app.decorators import login_required

parques = Blueprint('parques', __name__, template_folder='templates')


@parques.route('/parques')
def main_parques():
    
    
    #favorites_parques = Parque.favorites_parques(session['user']['id'])
    mostrar_parques = Parque.todos_parques(session['user']['id'])
    
    #import pdb; pdb.set_trace()
    return render_template('parques.html', mostrar_parques=mostrar_parques)

@parques.route('/parques/drop/<parque_id>')
def drop_parque(parque_id):
    Parque.drop_parque(session['user']['id'], parque_id)
    return redirect('/parques')

@parques.route('/parques/join/<parque_id>')
def join_parque(parque_id):
    Parque.join_parque(session['user']['id'], parque_id)
    return redirect('/parques')