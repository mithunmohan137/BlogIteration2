json.extract! user, :id, :first_name, :last_name, :phone_number, :address, :email_id, :created_at, :updated_at
json.url user_url(user, format: :json)