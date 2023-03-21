#language:pt

Funcionalidade: [US-0003] – Tela de cadastro - Checkout
   Como cliente da EBAC-SHOP
   Quero fazer concluir meu cadastro
   Para finalizar minha compra 


   Contexto:
      Dado que estou na tela de Checkout    


      Esquema do Cenário: Preenchimento dos dados pessoais para faturamento
        Quando o usuário preencher os dados pessoais com <nome> e <sobrenome>
            E preencher os campos de endereço com <pais>, <endereco>, <cidade> e <CEP>
            E preencher os campos para contato com <telefone> e <email>
        Então ao clicar no botão Finalizar Compra o sistema deve exibir a mensagem <mensagem>
        Exemplos:
            | nome | sobrenome | pais   | endereco | cidade    | CEP       | telefone         | email             | mensagem                                           |
            | Tiago| Teles     | Brasil | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | tiago@ebac.com.br | Detalhes para faturamento atualizados com sucesso! |
            |      | Teles     | Brasil | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | tiago@ebac.com.br | O preenchimento do campo Nome é obrigatório!       |
            | Tiago|           | Brasil | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | tiago@ebac.com.br | O preenchimento do campo Sobrenome é obrigatório!  |
            | Tiago| Teles     |        | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | tiago@ebac.com.br | O preenchimento do campo País é obrigatório!       |
            | Tiago| Teles     | Brasil |          |           | 01234-567 | (11) 99999-9999  | tiago@ebac.com.br | O preenchimento do campo Endereço é obrigatório!   |
            | Tiago| Teles     | Brasil | Rua X    |           | 01234-567 | (11) 99999-9999  | tiago@ebac.com.br | O preenchimento do campo Cidade é obrigatório!     |
            | Tiago| Teles     | Brasil | Rua X    | São Paulo |           | (11) 99999-9999  | tiago@ebac.com.br | O preenchimento do campo CEP é obrigatório!        |
            | Tiago| Teles     | Brasil | Rua X    | São Paulo | 01234-567 |                  | tiago@ebac.com.br | O preenchimento do campo Telefone é obrigatório!   |
            | Tiago| Teles     | Brasil | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  |                   | O preenchimento do campo E-mail é obrigatório!     |
            | Tiago| Teles     | Brasil | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | tiago2ebac.com.br | E-mail informado inválido!                         |
            | Tiago| Teles     | Brasil | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | @ebac.com.br      | E-mail informado inválido!                         |
            | Tiago| Teles     | Brasil | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | tiago@ebac        | E-mail informado inválido!                         |
            | Tiago| Teles     | Brasil | Rua X    | São Paulo | aaaaa-aaa | (11) 99999-9999  | tiago@ebac.com.br | Campo CEP deve conter apenas números!              |
            | Tiago| Teles     | Brasil | Rua X    | São Paulo | 01234-567 | telefone testeee | tiago@ebac.com.br | Campo telefone deve conter apenas números!         |
            | Tiago| Teles     | xa34   | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | tiago@ebac.com.br | País informado inválido ou não selecionado!        |
        

