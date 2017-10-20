json.extract! olduser, :id, :firstname, :lastname, :email, :created_at, :updated_at
json.url olduser_url(olduser, format: :json)
