from flask import request, redirect, render_template, Blueprint, flash, session
from app.models.users import User
from app.models.adopciones import Adopcion
from app.decorators import login_required

adopciones = Blueprint('adopciones', __name__, template_folder='templates')

@adopciones.route('/adopciones')
def main_adopciones():
    
    
    #favorites_adopciones = Adopcion.favorites_adopciones(session['user']['id'])
    mostrar_adopciones = Adopcion.todas_adopciones(session['user']['id'])
    
    #import pdb; pdb.set_trace()
    return render_template('adopciones.html', mostrar_adopciones=mostrar_adopciones)


@adopciones.route('/adopciones/drop/<adopcion_id>')
def drop_adopcion(adopcion_id):
    Adopcion.drop_adopcion(session['user']['id'], adopcion_id)
    return redirect('/adopciones')

@adopciones.route('/adopciones/join/<adopcion_id>')
def join_adopcion(adopcion_id):
    Adopcion.join_adopcion(session['user']['id'], adopcion_id)
    return redirect('/adopciones')