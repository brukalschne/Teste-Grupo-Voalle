#language: pt

Funcionalidade: Consultar crédito
Como vendedor
Eu quero realizar uma venda baseada no score de crédito de um lead
Para que eu possa seguir as políticas de vendas da minha organização

Cenário: Consulta de pessoa jurídica - Parâmetro obrigatório
Dado que o parâmetro de consulta seja obrigatório
Quando eu realizar a venda para uma pessoa jurídica
Então deve efetuar a consulta de crédito

Cenário: Consulta de pessoa jurídica - Parâmetro não obrigatório
Dado que o parâmetro de consulta não seja obrigatório
Quando eu realizar a venda para uma pessoa jurídica
Então não deve efetuar a consulta de crédito

Cenário: Não permitir a venda
Dado que a consulta de crédito seja realizada para uma pessoa jurídica
Quando retornar um score entre 0 a 700
Então não deve permitir a realização da venda

Cenário: Não permitir a venda e enviar e-mail para supervisor
Dado que a consulta de crédito seja realizada para uma pessoa jurídica
Quando retornar um score entre 701 a 900
Então não deve permitir a realização da venda
E deve enviar um e-mail para 'vendas@vendas.com.br'

Cenário: Permitir a venda
Dado que a consulta de crédito seja realizada para uma pessoa jurídica
Quando retornar um score entre 901 a 999
Então deve permitir a venda