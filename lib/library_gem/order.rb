require_relative 'read_data'

class Order
  attr_accessor :book_title, :reader_name, :date

  extend ReadData

  def initialize(args)
    @book_title = args['book']
    @reader_name = args['reader']
    @date = args['date']
  end 

end
