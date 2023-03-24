class Solver
  def factorial(num)
    raise ArgumentError, 'N should be a non-negative integer' if num.negative?

    result = 1
    (1..num).each { |i| result *= i }
    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(nums)
    if (nums % 3).zero? && (n % 5).zero?
      'fizzbuzz'
    elsif (nums % 3).zero?
      'fizz'
    elsif (nums % 5).zero?
      'buzz'
    else
      nums.to_s
    end
  end
end
