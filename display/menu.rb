def iniciar_menu(produtos = [])
    
    loop do
        mensagem_amarelo("===== Escolha uma das opções abaixo =====", false, false)
        mensagem("1 - Cadastro de Produtos", false, false)
        mensagem("2 - Lista de Produtos", false, false) 
        mensagem("3 - Retirada de Estoque", false, false) 
        mensagem_vermelho( "4 - Sair", false, false)
        opcao = gets.to_i

        case opcao
        when 1 
            cadastro_produto(produtos)
        when 2
            mensagem "Lista"
        when 3 
            mensagem "Retirada"
        when 4
            limpar_tela
             exit
        else
            mensagem "Opção Inválida"
        end

    end
end