require_relative 'read_data'

class Reader
  extend ReadData

  attr_accessor :reader_name, :email, :city, :street, :house

  def initialize(args)
    @reader_name = args['name']
    @email = args['email']
    @city = args['city']
    @street = args['street']
    @house = args['house'] 
  end 
end