def half_pyramid
	puts ""
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	puts "(Rentre un nombre entre 1 et 25)"
	print "> "	
	user_number = gets.chomp.to_i

	puts "Voici la pyramide :"


	brick = 1
	space = user_number

	if (user_number > 0) && (user_number < 25) 
		

		user_number.times do 
	  
	  		puts ("  " * space) + ("# " * brick)
	  		brick += 1
	  		space -= 1
		end

	else
		puts "Oups, ça n'a pas fonctionné, as-tu bien choisi un nombre entre 1 et 25 ?"
	end

end





 
 def full_pyramid
 	puts ""
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu (choisis un nombre impair) ?"
	puts "(Rentre un nombre entre 1 et 25)"
	print "> "	
	user_number = gets.chomp.to_i

	puts "Voici la pyramide :"

	brick = 1
	space = user_number - 1

	if (user_number > 0) && (user_number%2 != 0) 

		user_number.times do 

			puts (" " * space) + ("#" * brick)
			brick += 2
			space -= 1 
		end
	else
		puts "Oups, ça n'a pas fonctionné, as-tu bien choisi un nombre impair ?"
	end

	return brick - 4
end





def wtf_pyramid 
	brick = full_pyramid
	space = 1

	while brick > 0 
		puts (" " * space) + ("#" * brick)
		brick -= 2
		space += 1
	end
end




wtf_pyramid