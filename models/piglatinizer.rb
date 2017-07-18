class PigLatinizer
	attr_accessor :text

	def piglatinize(word)
		if word[0].downcase.match(/[aeoui]/)
			return word.split("").push("way").join("")
		else
			consonant_cluster = []
			vowels = []
			word.split("").each do |letter|
				if letter.match(/[aeoui]/) == nil && vowels.length == 0
					consonant_cluster.push(letter)
				elsif letter.match(/[aeoui]/).class.to_s == "MatchData"
					vowels.push(letter)
				else
				end
			end
			cluster_count = consonant_cluster.length
			minus_cluster = word[cluster_count..(word.length)]
			minus_cluster + consonant_cluster.join("") + "ay"
		end
	end

	def to_pig_latin(sentence)
		final = sentence.split(" ").map do |word|
			word.downcase.split("")
			piglatinize(word)
		end
		final.each do |word|
			word.capitalize
		end.join(" ")
	end

end