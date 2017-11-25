# Feed database
require 'faker'
module DbFeed
  def create_users
    100.times do |i|
      User.create!(
        name: Faker::Name.first_name,
        surname: Faker::Name.last_name,
        adress: Faker::Address.city,
        email: Faker::Internet.email,
        phone_number: Faker::PhoneNumber.cell_phone,
        lib_ticket_id: i
      )
    end
  end

  def create_librarians
    100.times do |i|
      Librarian.create!(
        name: Faker::Name.first_name,
        surname: Faker::Name.last_name,
        address: Faker::Address.city,
        email: Faker::Internet.email,
        phone_number: Faker::PhoneNumber.cell_phone,
        passport_code: i
      )
    end
  end

  def create_authors
    100.times do |i|
      Author.create!(
        name: Faker::Name.first_name,
        surname: Faker::Name.last_name,
        country_of_birth: Faker::Address.country,
        country_of_death: Faker::Address.country,
        year_of_birth: 1780 + i,
        gender: ['male', 'female'].sample
      )
    end
  end

  def create_books
    100.times do |i|
      Book.create!(
        name: Faker::Book.title,
        genre: Faker::Book.genre,
        year: 1800 + i,
        author_id: i + 1
      )
    end
  end

  def create_magazines
    100.times do |i|
      Magazine.create!(
        name: Faker::Book.title,
        issue_number: i
      )
    end
  end

  def create_orders
    10.times do |i|
      Order.create!(
        order_date: DateTime.now,
        librarian_id: i + 1,
        user_id: i + 1,
        price: i + 1
      )
      Order.find(i + 1).books << Book.find(i + 1)
      Order.find(i + 1).books << Book.find(i + 2)
      Order.find(i + 1).magazines << Magazine.find(i + 1)
      Order.find(i + 1).magazines << Magazine.find(i + 2)
    end

    10.times do |i|
      Order.create!(
        order_date: DateTime.yesterday,
        librarian_id: i + 11,
        user_id: i + 11,
        price: i + 1
      )
      Order.find(i + 1).books << Book.find(i + 11)
      Order.find(i + 1).books << Book.find(i + 12)
      Order.find(i + 1).magazines << Magazine.find(i + 11)
      Order.find(i + 1).magazines << Magazine.find(i + 12)
    end
  end
end
