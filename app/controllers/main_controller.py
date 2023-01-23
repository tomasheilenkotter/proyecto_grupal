from flask import request, redirect, render_template, Blueprint, flash, session
from app.decorators import login_required
from app.models.users import User
from app.models.main import Main

main = Blueprint('main', __name__, template_folder='templates')

# rutas nuevas
@main.route('/main')
def main_quotes():
    return render_template('main.html')


@main.route('/main/new')
def new_quote():
    return render_template('/add_comments.html')


@main.route('/main/new', methods=['POST'])
def create_quote():
    print(f"autor:{request.form['autor']}")
    print(request.form)
    if not Main.validate(request.form):
        return redirect('/main/new')
    Main.create_quote(
        request.form['autor'],
        request.form['mensaje'],
        session['user']['id']
    )
    return redirect('/main')

@main.route('/main/drop/<quote_id>')
def drop_quote(quote_id):
    Main.drop_quote(session['user']['id'], quote_id)
    return redirect('/main')

@main.route('/main/delete/<quote_id>')
def delete_quote(quote_id):
    Main.delete_quote(session['user']['id'], quote_id)
    return redirect('/main')
