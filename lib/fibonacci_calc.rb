class Fixnum

  def closest_fibonacci

    raise "Can only calculate closest fibonacci of number > 0" if self <= 0

    find_fibonacci(self)

  end

  private

  @@fibonacci_sequence = [0, 1]

  def find_fibonacci(num)
    best_fibonacci = -1
    best_fibonacci = 0 if num == 1
    last_index = -1
    while best_fibonacci < 0
      last_fibonacci = @@fibonacci_sequence[last_index]
      prev_fibonacci = @@fibonacci_sequence[last_index - 1]
      if last_fibonacci >= num && prev_fibonacci < num
        best_fibonacci = prev_fibonacci
      elsif prev_fibonacci >= num
        last_index -= 1
      else
        @@fibonacci_sequence << last_fibonacci + prev_fibonacci
      end
    end

    best_fibonacci

  end

end
