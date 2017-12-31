fibonacci = Enumerator.new do |yielder|
	n1 = 1
	n2 = 2
	loop do
		yielder.yield n1
		n1, n2 = n2, n1 + n2
	end
end

fibonacci.take_while { |x| x <= 4_000_000 }.reduce(0) do |sum, x|
	sum += x if x % 2 == 0
	sum
end

