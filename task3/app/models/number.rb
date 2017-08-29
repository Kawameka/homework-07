class Number < ApplicationRecord
  validates :to_factorial, presence: true, uniqueness: true, length: { maximum: 2 }, numericality: { only_integer: true }
  
  before_save { |number| number.factorialed = _factorial(number.to_factorial, 1) }

  private

  def _factorial(number, value)
    if number < 2
      value
    else
      number * _factorial(number - 1, 1)
    end
  end
  
end
