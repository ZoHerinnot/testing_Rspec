
def is_multiple_of_3_or_5?(current_numer)

   if current_numer %3 == 0 || current_numer %5 == 0
   	return true
   else
   	return false
   end
end
def sum_of_3_or_5_multiples(final_number)
   
    if final_number.class != Integer || final_number < 0
       return "Yo ! Je ne prends que les entiers naturels. TG."
	end
	  final_sum = 0 
    current_number = 0
    final_number.times do |i|
	      current_number = i
	    if is_multiple_of_3_or_5?(current_number)
	      final_sum += current_number
	    end
	end
    return final_sum
end