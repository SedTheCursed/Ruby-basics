def half_pyramid
	puts ""
	puts "Salut, bienvenue dans ma pyramide montante ! Combien d'étages veux-tu ?"
	puts "(Rentre un nombre entre 1 et 25)"
	print "> "	
	user_number = gets.chomp.to_i

	puts "Voici la pyramide :"


	brick = 1
	space = user_number

	if (user_number > 0) && (user_number <= 25) 
		

		user_number.times do 
	  
	  		puts ("  " * space) + ("# " * brick)
	  		brick += 1
	  		space -= 1
		end

	else
		puts "Oups, ça n'a pas fonctionné, as-tu bien choisi un nombre entre 1 et 25 ?"
		half_pyramid
	end

end

def top_pyramid(stairs)
	puts "Voici la pyramide :"
	brick = 1
	space = stairs - 1

	stairs.times do 
		puts (" " * space) + ("#" * brick)
		brick += 2
		space -= 1 
	end

	return brick - 4
end
 
 def full_pyramid
 	puts ""
	puts "Salut, bienvenue dans ma pyramide triangulaire ! Combien d'étages veux-tu ?"
	puts "(Rentre un nombre entre 1 et 25)"
	print "> "	
	user_number = gets.chomp.to_i

	if (user_number > 0) && (user_number <= 25)
		top_pyramid(user_number)
	else
		puts "Oups, ça n'a pas fonctionné, as-tu bien choisi un nombre entre 1 et 25 ?"
		full_pyramid
	end
end


def wtf_pyramid
	puts ""
	puts "Salut, bienvenue dans ma pyramide en losange ! Combien d'étages veux-tu ?"
	puts "(Rentre un nombre impair)"
	print "> "	
	user_number = gets.chomp.to_i

	if (user_number > 0) && (user_number % 2 != 0)
		brick = top_pyramid(user_number)
		space = 1

		while brick > 0 
			puts (" " * space) + ("#" * brick)
			brick -= 2
			space += 1
		end
	else
		puts "Oups, ça n'a pas fonctionné, as-tu bien choisi un nombre impair ?"
		wtf_pyramid
	end
end



half_pyramid
full_pyramid
wtf_pyramid