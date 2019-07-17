
def text_detector(message)

	if message.is_a?(Integer) || message.is_a?(Float)
	    return false
	elsif message.split.length < 2
	    return false
	else
		return true
	end
end

def string_convertion(letter,key)
	letter_num = letter.ord
	#if (letter_num >= 65 && letter_num <= 90) || (letter_num >= 97 && letter_num <=122)
		   # return letter_num
   #===== capital letter A..Z=====#
	#else 
			if (letter_num >= 65 && letter_num <= 90)
			     letter_num += key
			     return letter_num.chr
			else
				rest_num = letter_num - 90
				return (65 + rest_num).chr
		 	end
   #===== tiny letter a..z=====#
		
			if (letter_num >= 97 && letter_num <=122)
				letter_num += keys
				return letter_num.chr 
			else
				rest_num = letter_num - 122
				return (97 +rest_num).chr
		    end
    #end   
end


def caesar_cipher(message,key)
	if key < 0 || key.class != Integer || key > 25
		return "it's not the right key you're an idiot
     .Takes numbers between 0 and 25"
	end
	crypted_message = ""
	array_of_message = message.chars
	array_of_message.length.times do |i|
		crypted_message += string_convertion(array_of_message[i],key)
	end
	return crypted_message
end