require 'colorize'
require_relative "display/menu"
require_relative "display/operacoes_de_tela"
require_relative "core/cadastro_produto"
require_relative "core/lista_produto"

produtos = [
    {
        id: Time.now.to_i,
        nome: 'Goiaba',
        descricao: 'vermelha',
        preco: 2.5,
        quantidade: 20
    },
    {
        id: Time.now.to_i,
        nome: 'Banana',
        descricao: 'Prata',
        preco: 4.50,
        quantidade: 12
    }
]

iniciar_menu(produtos)
