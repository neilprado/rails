json.extract! course, :id, :nome_instrutor, :email_instrutor, :titulo, :carga_horaria, :vagas, :requisito, :created_at, :updated_at
json.url course_url(course, format: :json)
