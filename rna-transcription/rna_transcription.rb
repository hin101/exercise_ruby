module BookKeeping
  VERSION = 4
end

class Complement
	def self.of_dna(strand)
    rna = { "G" => "C", 
            "C" => "G",
            "T" => "A",
            "A" => "U"
          }

    complement = ''
    
    for i in 0..strand.length do 
      if strand[i] == 'X'
        complement = ''
        break
      end
      complement += rna.fetch(strand[i],'')
    end

    complement
	end
end