json.extract! person, :id, :nome, :abreviacao, :created_at, :updated_at
json.url person_url(person, format: :json)
