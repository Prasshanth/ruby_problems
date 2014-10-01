def substrings(sentence, dictionary)
	results = {}
	dictionary.each do |word|
		sentence.downcase!	
		if sentence =~ /#{word}/
			word_matches = sentence.scan(/#{word}/)
			word_matches.each do |matches|	
				if results[matches]
					results[matches] += 1
				else
					results[matches] = 1
				end
			end
		end
	end
	print results
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
