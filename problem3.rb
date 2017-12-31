# Largest prime factor
# Problem 3 
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# def find_prime_factors(num)
# 	num_1 = 1

# 	(1..num).each do |i|
# 		if i % num_1 == 0 
# 			num_1 += i
# 		end
# 		puts i
# 	end
# end

def find_prime_factors(prime)
	(2..Math.sqrt(prime)).to_a.each do |x|
		break if prime <= x
		prime /= x if prime % x == 0
	end
	puts prime
end

find_prime_factors(600851475143)