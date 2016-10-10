require 'prime'

# prime_array = Prime.take_while { |p| p < 40 }

total_count = Prime.take_while { |p| p < 40 }.reduce(:+)

p total_count