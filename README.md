# Sistema de Cadastro de Clientes

Este é um sistema simples de cadastro de clientes desenvolvido em Ruby. O sistema permite que você cadastre clientes com informações como nome, endereço, CEP, telefone e email. Além disso, o sistema faz a validação dos dados inseridos.

## Funcionalidades

- **Cadastrar Cliente**: O sistema coleta os dados do cliente, como nome, endereço, CEP, telefone e email, e os valida.
- **Validação de Dados**: O sistema valida as entradas para:
  - **CEP** no formato `00000-000`
  - **Telefone** nos formatos `99 99999-9999`, `99 9999-9999`, `(99) 99999-9999`, ou `(99) 9999-9999`
  - **Email** no formato padrão (exemplo: `exemplo@dominio.com`)
- **Visualizar Clientes Cadastrados**: Lista os clientes cadastrados com seus respectivos dados.
- **Menu Interativo**: Possui um menu que permite escolher entre cadastrar novos clientes, visualizar os cadastrados ou sair do sistema.

## Exemplo de Uso

Ao rodar o programa, o seguinte menu é exibido:
```
ruby
Sistema de cadastro de cliente
Menu

1 - Cadastrar
2 - Ver clientes
0 - Sair

Opção:
```

```
ruby

- **Opção 1 - Cadastrar**: Permite cadastrar um novo cliente.
- **Opção 2 - Ver Clientes**: Exibe a lista de clientes cadastrados.
- **Opção 0 - Sair**: Encerra o sistema.
```

### Exemplo de cadastro de cliente:

Cadastrar Cliente
Nome completo: Maria Silva | Endereço completo: Rua das Flores, 123 | Ex: 00000-000 CEP: 12345-678 | Ex: 99 99999-9999 Telefone: 99 91234-5678 | Ex: exemplo@dominio.com E-mail: maria@exemplo.com



## Validações

- **Telefone**: Se o número de telefone não estiver em um dos formatos aceitos, o sistema solicitará a reinserção do dado.
- **Email**: Caso o email seja inválido, o sistema pedirá que você o insira novamente.
- **CEP**: O CEP também será verificado quanto ao seu formato. Se estiver incorreto, o sistema solicitará que seja reinserido.

## Pré-requisitos

- Ruby 2.5+ instalado no sistema.

## Como executar

1. Clone o repositório ou baixe os arquivos.
2. Navegue até o diretório onde o arquivo `cadastro_clientes.rb` está localizado.
3. Execute o arquivo no terminal com o seguinte comando:

```
ruby
   ruby cadastro_clientes.rb
```

## Licença

Este projeto é distribuído sob a licença MIT. Consulte o arquivo LICENSE para mais detalhes.
