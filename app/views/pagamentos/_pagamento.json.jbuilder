json.extract! pagamento, :id, :entrada_id, :data_pag, :valor_pag, :report, :created_at, :updated_at
json.url pagamento_url(pagamento, format: :json)
