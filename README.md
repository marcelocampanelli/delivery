## Ruby Backend Test:

Os detalhes da execução e avaliação do teste podem ser visualizados **[neste link](TEST.md)**.

A empresa esta em expansão, e neste momento é necessário um sistema que receba pedidos de lojas parceiras para que nós poçamos realizar a entrega desses pedidos.
Antes de aceitarmos esse frete, precisamos validar os esses pedidos que nos é passado, para ver se temos todas as informações necessárias para realizar a entrega

#
## Stack
* `ruby 2.7.1`
* `rails 6.0.3`
* `postgres 12`
## About

Para rodar o projeto, crie um arquivo chamado "application.yml" em "/config" neste arquivo coloque =>

local_database_user: "nome_usuario_postgres" <br>
local_database_pass: "senha" <br>
API_URL: "aqui_link_api_recruitment/api/v2/order" //este link é apenas para o rspec.



## Sending an order
To create a new order you must send a post request containing the raw order data. e.g:
* `verb` - `POST`
* `endpoint` - `/api/v2/order`
* `body` - [spec/fixtures/raw_order.json](spec/fixtures/raw_order.json)

