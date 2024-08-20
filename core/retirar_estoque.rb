require 'terminal-table'

def retirar_estoque(produtos)
  limpar_tela
  mensagem_amarelo("======Lista de produtos======", true, true)

  table = Terminal::Table.new do |t|
    t.headings = ['ID', 'Nome', 'Quantidade']
    produtos.each do |row|
      t.add_row [row[:id], row[:nome], row[:quantidade]]
    end
  end

  puts table

  mensagem_azul("Digite o ID do produto...", false, false)
  id = gets.to_i
  limpar_tela

  produto = produtos.find { |p| p[:id] == id }
  
  unless produto
    mensagem_vermelho("Produto com ID (#{id}) não encontrado na lista.", false, false)
    mensagem("Deseja digitar o número novamente? (S/N)", false, false)
    opcao = gets.chomp.downcase
    if opcao == "s" || opcao == "sim"
      retirar_estoque(produtos) # Pode-se chamar novamente para reiniciar a lista
    end
    return
  end

  limpar_tela
  mensagem_azul("Digite a quantidade que deseja retirar do estoque do produto #{produto[:nome]}:")
  quantidade_retirada = gets.to_i

  produto[:quantidade] -= quantidade_retirada
  mensagem_verde("Retirada realizada com sucesso!", true, true, 3)
  lista_produto(produtos)
end
