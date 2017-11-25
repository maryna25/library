json.extract! user, :id, :name, :surname, :adress, :email, :phone_number, :lib_ticket_id, :created_at, :updated_at
json.url user_url(user, format: :json)
