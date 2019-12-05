json.extract! ticket, :id, :ganhador, :telefone, :filme, :genero, :classificacao, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
