module MathHelper
  def exponent(a, b)
    a ** b
  end
end

class Calc
  include MathHelper

  def square_root(num)
    exponent(num, 0.5)
  end
end

calc = Calc.new
puts calc.square_root(25)