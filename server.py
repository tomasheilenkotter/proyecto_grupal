from app import app

# registramos los controladores de la app
from app.controllers.auth import auth
from app.controllers.main_controller import main
from app.controllers.clinica_controller import clinicas
from app.controllers.local_controller import locales
from app.controllers.peluqueria_controller import peluquerias
from app.controllers.parque_controller import parques
from app.controllers.hotel_controller import hoteles
from app.controllers.adopcion_controller import adopciones

#from app.controllers.github_ajax import github_ajax

app.register_blueprint(auth)
app.register_blueprint(main)
app.register_blueprint(clinicas)
app.register_blueprint(locales)
app.register_blueprint(peluquerias)
app.register_blueprint(parques)
app.register_blueprint(hoteles)
app.register_blueprint(adopciones)
#app.register_blueprint(github_ajax)

if __name__=="__main__":   
    app.run(debug=True)    
