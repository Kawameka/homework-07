class Number < ApplicationRecord
  validates :to_factorial, presence: true, uniqueness: true, length: { maximum: 3 }, numericality: { only_integer: true }
  
  before_create do
    factorialed = _factorial(to_factorial, 1)
  end

  private

  def _factorial(number, value)
    if number < 2
      value
    else
      number * _factorial(number - 1, 1)
    end
  end
  
end
