require 'yaml'

module ReadData

  def load_data
    file_name = File.join(__dir__, "data", "#{self.inspect.downcase}.yml")
    
    YAML.load_file(file_name).map do |arg|
      self.new(arg)
    end
  end

end  