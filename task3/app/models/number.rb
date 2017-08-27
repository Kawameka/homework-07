class Number < ApplicationRecord
  validates :to_factorial, presence: true, uniqueness: true, length: { maximum: 3 }, numericality: { only_integer: true }
  before_save :run_factoring, only: [:create]

  private

  def run_factoring
    factorialed = _factorial(to_factorial, 1)
  end

  def _factorial(number, value)
    if number < 2
      value
    else
      number * _factorial(number - 1, 1)
    end
  end
  
end
