Villani = []
	for i in 1...1000
	if i % 3 == 0 || i % 5 == 0
		Villani.push(i)
	end
end


VILLANI = Villani.inject(0, :+)

puts VILLANI