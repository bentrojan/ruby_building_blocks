def substrings(string, dictionary)
	count = Hash.new(0)

	dictionary.each do |w|
		string.downcase.split.each do |s|
			if s.include?(w)
				count[w]+=1
			end
		end
	end

	count
	
end


dictionary = ["below","down","go","going","horn","how",
			  "howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts ""
puts substrings("Howdy partner, sit down! How's it going?", dictionary)