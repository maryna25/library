json.extract! book, :id, :name, :genre, :year, :created_at, :updated_at
json.url book_url(book, format: :json)
