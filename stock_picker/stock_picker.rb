def stock_picker prices
	
	holder = []
	holder = holder + prices
	
	while holder.max == holder.first
		holder.shift
	end
	
	while holder.min == holder.last
		holder.pop
	end

	max = 0
	buy = 0
	sell = 0
	holder.reverse.each do |x|
		holder.each do |y|
			if ((x-y) > max) && (holder.index(x) > holder.index(y))
				max = x-y
				buy = y
				sell = x
			end
		end
	end

	[prices.index(buy), prices.index(sell)]
end


p stock_picker([17,3,6,9,15,8,6,1,10])
puts ""
p stock_picker([3,5,8,4,11,16,24])
puts ""
p stock_picker([11,26,14,20,28,3,1])


