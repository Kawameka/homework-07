class Challenge3
  attr_reader :input_string

  def initialize(input_string)
    @input_string = input_string    
  end

  def rewrite
    array = Array.new
    count = 1
    previous_char = nil
    @input_string.each_char do |char|
      if previous_char == nil
        previous_char = char
      else
        if char == previous_char
          count += 1
        else
          array << "#{count}#{previous_char}"
          count = 1
          previous_char = char
        end
      end
    end
    array << "#{count}#{previous_char}"
    array.join
  end
end
