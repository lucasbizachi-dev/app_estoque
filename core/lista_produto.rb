require 'terminal-table'

def lista_produto(produtos)
    limpar_tela
    mensagem_amarelo("======Lista de produtos======", true, true)

    table = Terminal::Table.new do |t|
        t.headings = ['ID', 'Nome', 'Descrição', 'Preço', 'Quantidade']
        produtos.each do |row|
            t.add_row [row[:id], row[:nome], row[:descricao], row[:preco], row[:quantidade]]
        end
    end
   
    puts table
    
    mensagem_amarelo("Digite ENTER para continuar...", false, false)
    gets
    limpar_tela

end

