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
end