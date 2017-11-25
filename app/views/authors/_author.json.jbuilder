json.extract! author, :id, :name, :surname, :country_of_birth, :country_of_death, :year_of_birth, :gender, :created_at, :updated_at
json.url author_url(author, format: :json)
