class Challenge4
  def self.factorial(number)
    _factorial(number, 1)
  end

  private

  def self._factorial(number, value)
    if number < 2
      value
    else
      number * _factorial(number - 1, 1)
    end
  end
end
