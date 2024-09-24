class Cliente

    def initialize
        @verificar = Validacoes.new(self)
        @dados = []
    end

    def cadastrar_telefone
        puts "Ex: 99 99999-9999"
        print "Telefone: "
        @telefone = gets.chomp
        @verificar.telefone(@telefone)
    end

    def cadastrar_cep
        puts "Ex: 00000-000"
        print "CEP: "
        @cep = gets.chomp.strip
        @verificar.cep(@cep)
    end

    def cadastrar_email
        puts "Ex: exemplo@dominio.com"
        print "E-mail: "
        @email = gets.chomp.downcase
        @verificar.email(@email)
    end

    def cadastrar
        puts "Cadastrar Cliente"
        print "Nome completo: "
        nome = gets.chomp.upcase
        print "Endereço completo: "
        endereco = gets.chomp
        cadastrar_cep
        cadastrar_telefone
        cadastrar_email
        

        @dados << {nome: nome, endereco: endereco, cep: @cep, telefone: @telefone, email: @email}
    end

    def ver_clientes
        puts "Ver Clientes"
        if !@dados.empty?
            @dados.each_with_index do |dado, indice|
                puts "#{indice + 1}º - Nome: #{dado[:nome]} - Endereço: #{dado[:endereco]} - CEP: #{dado[:cep]}- Telefone: #{dado[:telefone]} - E-mail: #{dado[:email]}"
            end
        else
            puts "Não existe clientes cadastrados!"
            puts "Deseja cadastrar? 1 - Sim | Enter - Não"
            print "Opção: "
            opcao = gets.chomp
            if opcao == '1'
                cadastrar
            elsif opcao == ""
                puts "Saindo..."
                return
            else
                puts "Opção Inválida!"
            end
        end
    end
end

class Validacoes
    def initialize(cliente)
        @cliente = cliente
    end

    def telefone(telefone)
        regex = /^(\(\d{2}\)\s?9?\d{4}-\d{4})|(\d{2}\s9?\d{4}-\d{4})|(\d{2}\s?9?\d{8})$/

        if telefone =~ regex
            
        else
            puts "Telefone inválido!"
            @cliente.cadastrar_telefone
        end
    end

    def email(email)
        regex = /\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b/

        if email =~ regex
        
        else
            puts "Email inválido!"
            @cliente.cadastrar_cep
        end
    end

    def cep(cep)
        regex = /^\d{5}-\d{3}$/

        if cep =~ regex
            
        else
            puts "CEP inválido!"
            @cliente.cadastrar_cep
        end
    end
end

def menu
    puts "Sistema de cadastro de cliente"
    cadastrar = Cliente.new

    loop do
        puts "         Menu"
        puts "\n"
        puts "1 - Cadastrar"
        puts "2 - Ver clientes"
        puts "0 - Sair"
        puts "\n"
        print "Opção: "

        escolha = gets.chomp.to_i

        if escolha == 1
            cadastrar.cadastrar
        elsif escolha == 2
            cadastrar.ver_clientes
        elsif escolha == 0
            puts "Saindo..."
            return
        else
            puts "Escolha Inválida! Tente novamente"
        end
    end
end

menu
