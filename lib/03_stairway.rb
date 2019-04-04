def throwDice(stair, manual = true)

	dice = rand(1..6)

	 puts "Le dé affice : #{dice}" if manual
	
	if dice >= 5
		stair += 1 
		puts "Tu gravis une marche, bravo !" if manual
		
	
	elsif dice == 1
		if stair != 0
			stair -= 1
			puts "Tu descends d'une marche." if manual
		else
			puts "Tu es dejà au rez-de-chaussée" if manual
		end

	else 
		puts "Tu reste sur la même marche." if manual
		
	end
	if manual
		puts "Maintenant tu es à la marche n°#{stair}"
		puts " "
	end

	return stair
end



def game(manual = true)
	stair = 0
	turn = 0

	if manual
		while stair < 10
			stair = throwDice(stair)
			turn += 1
			puts "Relance le dé"
			gets
		end
	else
		while stair < 10
			stair = throwDice(stair, false)
			turn += 1
		end
	end

	if manual
		puts " "
		puts "Et voilà ! Tu est arrivé en haut de l'escalier !!! Enjoy the view."
		puts "Ca t'as pris #{turn} lancés de dé."
	end

	return turn
end



def average_finish_time
	sum = 0
	nb_of_games = 0

	rand(100..255).times do
		sum += game(false)
		nb_of_games += 1
	end
	
	puts " "
	puts "Le nombre de tours moyens pour atteindre le haut des marches est : #{sum / nb_of_games}"

end

game
average_finish_time