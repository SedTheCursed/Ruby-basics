def say_hello(first_name)
    puts "Bonjour, #{first_name} !"
end

def ask_first_name
    puts "Quel est ton prénom ?"
    print "> "
    return first_name = gets.chomp
end

def perform
    say_hello(ask_first_name)
end

say_hello("Sed et Tahina")
perform