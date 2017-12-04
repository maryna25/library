class WelcomeController < ApplicationController
  def index
  end

  def first_task
    sql = "SELECT librarians.name, librarians.surname
           FROM librarians
           WHERE(librarians.id in
           (SELECT orders.librarian_id
           FROM orders
           WHERE orders.price = #{params[:price]}))"
    records_array = ActiveRecord::Base.connection.execute(sql).to_a
    @answer1 = ''
    records_array.each { |arr| arr.each { |a| @answer1 += a + ' ' } }
    p @answer1
    json_response(@answer1)
  end

  def second_task
    sql = "SELECT authors.name
           FROM authors
           WHERE(authors.id in
           (SELECT books.author_id
           FROM books
           WHERE books.genre = '#{params[:genre]}'))"
    records_array = ActiveRecord::Base.connection.execute(sql).to_a
    @answer2 = ''
    records_array.each { |arr| arr.each { |a| @answer2 += a + ' ' } }
    p @answer2
    json_response(@answer2)
  end

  def third_task
    sql = "SELECT authors.name
           FROM authors
           WHERE(authors.id in
           (SELECT books.author_id
           FROM books
           WHERE books.genre != '#{params[:genre]}'))"
    records_array = ActiveRecord::Base.connection.execute(sql).to_a
    @answer3 = ''
    records_array.each { |arr| arr.each { |a| @answer3 += a + ' ' } }
    p @answer3
    json_response(@answer3)
  end

  def task4
    sql = "SELECT authors.name
           FROM authors
           WHERE(authors.id not in
           (SELECT books.author_id
           FROM books
           WHERE books.genre = '#{params[:genre]}'))"
    records_array = ActiveRecord::Base.connection.execute(sql).to_a
    @answer4 = ''
    records_array.each { |arr| arr.each { |a| @answer4 += a + ' ' } }
    p @answer4
    json_response(@answer4)
  end

  def task5
    sql = "SELECT users.name
           FROM users
           WHERE(users.id not in
           (SELECT orders.user_id
           FROM orders
           WHERE orders.price = #{params[:price]}))"
    records_array = ActiveRecord::Base.connection.execute(sql).to_a
    @answer5 = ''
    records_array.each { |arr| arr.each { |a| @answer5 += a + ' ' } }
    p @answer5
    json_response(@answer5)
  end

  def task6
    sql = "SELECT librarians.name
           FROM librarians
           WHERE(librarians.id in
           (SELECT orders.librarian_id
           FROM orders INNER JOIN users on orders.user_id = users.id
           WHERE users.name = '#{params[:name]}'
           GROUP BY orders.librarian_id
           HAVING COUNT(orders.user_id) >= 2))"
    records_array = ActiveRecord::Base.connection.execute(sql).to_a
    @answer6 = ''
    records_array.each { |arr| arr.each { |a| @answer6 += a + ' ' } }
    p @answer6
    json_response(@answer6)
  end

  def task7
    sql = "SELECT COUNT(librarians.name)
           FROM librarians
           WHERE(librarians.id in
           (SELECT orders.librarian_id
           FROM orders INNER JOIN users on orders.user_id = users.id
           WHERE users.name = '#{params[:name]}'
           GROUP BY orders.librarian_id
           HAVING COUNT(orders.user_id) >= 2))"
    records_array = ActiveRecord::Base.connection.execute(sql).to_a
    @answer7 = records_array.first.first
    p @answer7
    json_response(@answer7)
  end

  def task8
    sql = "SELECT lib.surname
           FROM librarians AS lib
           WHERE NOT EXISTS (
              SELECT books.id FROM books
              INNER JOIN books_orders on books_orders.book_id = books.id
              INNER JOIN orders on orders.id = books_orders.order_id
              INNER JOIN librarians on librarians.id = orders.librarian_id
              WHERE librarians.id = lib.id AND books.id NOT IN(
              SELECT books_orders.book_id
              FROM books_orders
              INNER JOIN books on books.id = books_orders.book_id
              WHERE books.name = '#{params[:name]}'
             ))"
    records_array = ActiveRecord::Base.connection.execute(sql).to_a
    @answer6 = ''
    records_array.each { |arr| arr.each { |a| @answer6 += a + ' ' } }
    p @answer8
    json_response(@answer8)
  end

  private

  # Render JSON responce
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
