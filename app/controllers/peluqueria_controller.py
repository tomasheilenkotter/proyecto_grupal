from flask import request, redirect, render_template, Blueprint, flash, session
from app.models.users import User
from app.models.peluquerias import Peluqueria
from app.decorators import login_required

peluquerias = Blueprint('peluquerias', __name__, template_folder='templates')


@peluquerias.route('/peluquerias')
def main_peluquerias():
    
    
    #favorites_peluquerias = Peluqueria.favorites_peluquerias(session['user']['id'])
    mostrar_peluquerias = Peluqueria.todas_peluquerias(session['user']['id'])
    
    #import pdb; pdb.set_trace()
    return render_template('peluquerias.html', mostrar_peluquerias=mostrar_peluquerias)

@peluquerias.route('/peluquerias/drop/<peluqueria_id>')
def drop_peluqueria(peluqueria_id):
    Peluqueria.drop_peluqueria(session['user']['id'], peluqueria_id)
    return redirect('/peluquerias')

@peluquerias.route('/peluquerias/join/<peluqueria_id>')
def join_peluqueria(peluqueria_id):
    Peluqueria.join_peluqueria(session['user']['id'], peluqueria_id)
    return redirect('/peluquerias')