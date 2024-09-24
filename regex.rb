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