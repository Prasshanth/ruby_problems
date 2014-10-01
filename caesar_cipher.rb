#Caesar cipher program
#Takes as input a string and the shift factor, and outputs the modified string

def caesar_cipher(text, shift_factor)
	split_text = text.split("")
	split_text.each_with_index do |character, iterator|
		new_letter = character.ord + shift_factor
		if character.ord.between?(65, 90)
			split_text[iterator] = shift_character(new_letter, 90)
		elsif character.ord.between?(97, 122)
			split_text[iterator] = shift_character(new_letter, 122)
		end				
	end
	joined_text = split_text.join
	puts joined_text
end

def shift_character(character, pivot)
	if character > pivot
		return (character - 26).chr
	else 
		return character.chr
	end
end


puts "Enter the string to encrypt:"
string = gets.chomp
puts "Enter the shift factor:"
shift_factor = gets.chomp.to_i

caesar_cipher(string, shift_factor)