
class Gossip

    attr_reader :content, :author ,:id


    def initialize(params = {})
        @content = params.fetch(:content,"contenu" )  # valeur par defaut
        @author = params.fetch(:author, "auteur") # Valeur par defaut
        @id = id
    end

    def save    #Ecriture dans le fichier csv
        CSV.open("gossip.csv",'a') { |f|
            f << [@author,@content]
        }
    end

    def read_data #recupere ligne par ligne le contenu du fichier gossip.csv
        rows = []
        CSV.foreach("gossip.csv") { |row|
        #binding.pry
        if row[0].to_s.size > 0 || row[1].to_s.size > 0
            rows << row
        end
        }
        return rows
    end

    def delete
        puts "je supprime #{@id}"
    end
end
