json.extract! supplier, :id, :company_id, :cpf_cnpj, :name, :end, :phone, :email, :status, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
