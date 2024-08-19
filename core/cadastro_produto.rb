def cadastro_produto(produtos)
    mensagem("Iniciando cadastro de produto...", true, true, 1.5)
    mensagem("Digite o nome do produto:", false, false)
    nome= gets.chomp
    limpar_tela

    mensagem("Digite a descrição do produto (#{nome}): ", false, false)
    descricao = gets.chomp
    limpar_tela

    mensagem("Digite o preço do produto (#{nome}): ", false, false)
    preco = gets.to_f
    limpar_tela

    mensagem("Digite a quantidade em estoque (#{nome}): ", false, false)
    quantidade_estoque = gets.to_i
    limpar_tela

    produtos << {
        id: Time.now.to_i,
        nome: nome,
        descricao: descricao,
        preco: preco,
        quantidade: quantidade_estoque
    }

end