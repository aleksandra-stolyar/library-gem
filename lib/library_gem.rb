require "library_gem/version"
require "library_gem/author"
require "library_gem/order"
require "library_gem/book"
require "library_gem/reader"

class Library  
  class << self

    def load_data
      @orders = Order.load_data
      @authors = Author.load_data
      @books = Book.load_data
      @readers = Reader.load_data
    end
      
    def most_popular_book
      @orders.group_by { |o| o.book_title }.values.max_by(&:count).first
    end  

    def who_often_takes_book(book_title)
      selected_book = @orders.select{ |o| o.book_title == book_title }
      raise 'Book is not found' if selected_book.empty?
      selected_book.group_by { |sb| sb.reader_name }.values.max_by(&:count).first
    end  

    def number_of_people
      sorted = @orders.group_by { |o| o.book_title }.sort_by{|k,v| v.size }.reverse[0..2]
      sorted.map do |book_name, orders| 
        counted = orders.map {|order| order.reader_name }.uniq.count
        [book_name, counted]
      end.to_h
    end  
  
  end
end  
