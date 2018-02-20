json.extract! client, :id, :cpf_cnpj, :rg, :birth_date, :name, :sex, :ocupation, :civil_status, :postal, :street, :addr_number, :street_opt, :district, :state, :city, :phone1, :phone2, :email, :status, :obs, :created_at, :updated_at
json.url client_url(client, format: :json)
