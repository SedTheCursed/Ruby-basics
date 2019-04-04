def signup
    puts "Choisi ton mot de passe"
    print "> "
    return gets.chomp
end

def login(password)
    puts " "
    puts " "
    puts "Pour rentrer dans la zone secrète, entre ton mot de passe ici :"
    print "> "
    pwd = gets.chomp

    while (pwd != password)
        puts "Mot de passe incorrect !"
        puts "Veuillez reessayer"
        print "> "
        pwd = gets.chomp
    end

    return true
end

def welcome_screen
    puts " "
    puts " "
    puts "Bienvenue la zone secrète, Master"
    puts "Ici tu découvriras les plus dark secrets de tes collègues de THP"
    puts "Tu pensais les connaître ?"
    puts "Well, think again."
    puts "Niak niak niak"
    puts "."
    puts "."
    puts "Tout le monde en a marre que Tahina ramène des gateaux dégueulasses"
    puts "Sed gonfle tout le monde avec son hibernophilie"
    puts "Albin à choisi de se compliquer la vie avec son Linux qui lui installe des trucs de Mac. Coïncidence ? I think not !"
    puts "Où est Nassim ? Pas devant son ordi !"
    puts "Stay tuned for more <3"
end

def perform
    password = signup
    if (login(password))
        welcome_screen
    end
end

perform