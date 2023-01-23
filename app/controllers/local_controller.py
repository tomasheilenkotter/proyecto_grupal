from flask import request, redirect, render_template, Blueprint, flash, session
from app.models.users import User
from app.models.locales import Local
from app.decorators import login_required

locales = Blueprint('locales', __name__, template_folder='templates')


@locales.route('/locales')
def main_locales():
    
    
    #favorites_locales = Local.favorites_locales(session['user']['id'])
    mostrar_locales = Local.todos_locales(session['user']['id'])
    
    #import pdb; pdb.set_trace()
    return render_template('locales.html', mostrar_locales=mostrar_locales)

@locales.route('/locales/drop/<local_id>')
def drop_local(local_id):
    Local.drop_local(session['user']['id'], local_id)
    return redirect('/locales')

@locales.route('/locales/join/<local_id>')
def join_local(local_id):
    Local.join_local(session['user']['id'], local_id)
    return redirect('/locales')