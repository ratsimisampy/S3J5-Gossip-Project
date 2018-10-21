require 'Gossip'
require 'View'

class Controller

    def initialize
        @view = View.new

    end

    def create_gossip
        params = @view.create_gossip    #recupere les informations (content et author) depuis la vue (la classe View)
        
        gossip = Gossip.new(params[:author],params[:content])     #initialise le modele
        #binding.pry
        gossip.save
        
    end

    #options :
    # si 1 : affichage pour simple consultation
    # si 2 : affichage pour suppression
    def index_gossips(option) # va demander au modele de sortir tous les potins
        gossip = Gossip.new 
        case option
        when 1        
            @view.display(gossip.read_data) # puis transmets les datas a la View qui, elle, se chargera d'afficher les resultats
        when 2
            @view.display_del(gossip.read_data)
        end
    end

    def delete_gossip()
        # on afficher d'abord la liste des gossips
        self.index_gossips(2)

       # gossip = Gossip.new
        gossip.delete() #...
       
    end

end

