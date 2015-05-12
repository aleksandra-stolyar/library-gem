require_relative 'read_data'

class Author
  attr_accessor :author_name, :biography

  extend ReadData

  def initialize(args)
    @author_name = args['name']
    @biography = args['bio']
  end 
end  
