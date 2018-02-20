Category.create!([
  {name: "Oculos de Sol", description: nil},
  {name: "Lente", description: nil}
])
Client.create!([
  {cpf_cnpj: "011.484.380-50", rg: "123", birth_date: "2018-02-05", name: "Victor Buttner", sex: "Masculino", ocupation: "Desenvolvedor", civil_status: "Casado", postal: "91360-090", street: "Rua Engenheiro Walter Boehl", addr_number: 555, street_opt: "", district: "Vila Ipiranga", state: "RS", city: "Porto Alegre", phone1: "5193693154", phone2: "", email: "victorbuttner@gmail.com", status: true, obs: ""}
])
Order.create!([
  {user_id: 1, client_id: 1, product_id: 123123, status: "123", sub_total: 11.0, price_total: 11.0},
  {user_id: 1, client_id: 1, product_id: 123, status: "1", sub_total: 1.0, price_total: 1.0}
])
Product.create!([
  {cod_prod: "P1", name: "OCULOS DE SOL", category_id: "1", buy_price: 10.0, sell_price: 15.0, amount: 12, status: "1", type: nil, supplier_id: 1},
  {cod_prod: "P2", name: "LENTE 5MM", category_id: "2", buy_price: 11.0, sell_price: 11.0, amount: 12, status: "1", type: nil, supplier_id: 1},
  {cod_prod: "P3", name: "OCULOS MANEIRO", category_id: "1", buy_price: 11.0, sell_price: 11.0, amount: 11, status: "11", type: nil, supplier_id: 1}
])
Supplier.create!([
  {company_id: nil, cpf_cnpj: "123", name: "Forcenedor 1 ", end: "123", phone: "123", email: "123", status: false}
])
