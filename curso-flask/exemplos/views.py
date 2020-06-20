
#Cada arquivo separa é uma extenção do Flask


def init_app(app): ## o (app) é referencia do app python
    """Inicialização de extensões"""
    #Iniciando rotas
    @app.route("/") #@ Decorator Python
    def index():
        return 'Hello World! Curso flask 01'  

    @app.route("/contato") #@ - Decorator Python
    def contato():
        return "<form><input type='text'></form>"