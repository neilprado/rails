json.extract! subscription, :id, :nome, :matricula, :status, :course_id, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
