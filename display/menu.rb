def iniciar_menu(produtos = [])
    
    loop do
        mensagem_amarelo("===== Escolha uma das opções abaixo =====", false, false)
        puts "1 - Cadastro de Produtos"
        puts "2 - Lista de Produtos"
        puts "3 - Retirada de Estoque"
        puts "4 - Sair"

        opcao = gets.to_i

        case opcao
        when 1 
            mensagem "Cadastro de Produtos"
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