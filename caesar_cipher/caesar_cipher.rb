def caesar_cipher(str, key)
	str = str.split("")
	ans = []

	str.each do |letter|
		if !!(letter.match(/^[[:alpha:]]$/))
			key.times do
				letter = letter.next
			end
		end
		if letter.length == 2
			letter = letter.split("")
			letter.shift
			letter = letter.join
		end
		ans.push(letter)
	end

	ans.join

end






puts caesar_cipher("What a string!", 5)
puts caesar_cipher("I love you B!", 5)