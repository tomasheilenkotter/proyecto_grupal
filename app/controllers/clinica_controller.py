from flask import request, redirect, render_template, Blueprint, flash, session
from app.models.users import User
from app.models.clinicas import Clinica
from app.decorators import login_required

clinicas = Blueprint('clinicas', __name__, template_folder='templates')

@clinicas.route('/clinicas')
def main_clinicas():
    
    
    #favorites_clinicas = Clinica.favorites_clinicas(session['user']['id'])
    mostrar_clinicas = Clinica.todas_clinicas(session['user']['id'])
    
    #import pdb; pdb.set_trace()
    return render_template('clinicas.html', mostrar_clinicas = mostrar_clinicas)


@clinicas.route('/clinicas/drop/<clinica_id>')
def drop_clinica(clinica_id):
    Clinica.drop_clinica(session['user']['id'], clinica_id)
    return redirect('/clinicas')

@clinicas.route('/clinicas/join/<clinica_id>')
def join_clinica(clinica_id):
    Clinica.join_clinica(session['user']['id'], clinica_id)
    return redirect('/clinicas')