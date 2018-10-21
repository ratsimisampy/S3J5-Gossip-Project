



class View

    def create_gossip
        puts "Saisir votre nom: " #Ce sera le nom d'auteur du potin
        author = gets.chomp
        puts "Saisir le potin du jour: "  #Ce sera le content
        content = gets.chomp
        return params = { "content": content, "author": author }
    end


    def display(hash_gossips)
        puts
        puts "========= POTINS.FR ==========="
        puts "Auteurs        Potins"
        hash_gossips.each { |author,content|
            puts "#{author}         : #{content}" }
        puts "==============================="
        puts
    end

    def display_del(hash_gossips)
        i = 1
        puts 
        puts "========= POTINS.FR ==========="
        puts "ID. Auteurs        Potins"
        hash_gossips.each { |author,content|
            puts "#{i}. #{author}         : #{content}" 
            i += 1
        }
        puts "==============================="
        puts "Saisis l'ID du potin à supprimer"
        id = gets.chomp

        return id
    end

end