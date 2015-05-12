require_relative 'read_data'

class Book
  extend ReadData

  attr_accessor :book_title, :author_name

  def initialize(args)
    @book_title = args['title']
    @author_name = args['author']
  end  

end