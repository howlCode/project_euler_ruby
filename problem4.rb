# Largest palindrome product
# Problem 4 
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(num)
  num.to_s == num.to_s.reverse
end

def largest_palindrome
  num_range = (100..999).to_a
  check_nums = []

  num_range.each do |i|
    num_range.each do |l|
      check_nums.push(i * l)
    end
  end
  check_nums.select { |i| palindrome?(i) }.max
end

puts largest_palindrome