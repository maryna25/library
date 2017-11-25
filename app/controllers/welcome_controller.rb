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
  end
end
