import views
from flask import Flask #Importa o flask



def create_app(): #Função padrão que executa depois dos imports evitando loop entre APP e Viwes
    """Factory principal"""
    app = Flask(__name__)
    views.init_app(app)
    return app



