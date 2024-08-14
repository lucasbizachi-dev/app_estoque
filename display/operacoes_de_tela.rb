def mensagem(msg, timer=5)
    limpar_tela
    puts msg
    sleep(timer)
    limpar_tela

end

def limpar_tela
    if Gem.win_platform?
        system("cls") #No Windows
    else
        system("clear") #Em sistemas Unix/Linux
    end
end