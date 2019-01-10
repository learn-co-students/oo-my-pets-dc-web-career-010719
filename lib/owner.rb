require 'pry'

class Owner
attr_accessor :pets, :name
attr_reader :species
@@owners = []


def initialize(pets={fishes: [], cats: [], dogs: []})
  @pets = {fishes: [], cats: [], dogs: []}
  @species = "human"
  @@owners << self
end



def self.all
  @@owners
end

def self.count
  @@owners.length
end

def self.reset_all
  @@owners = []
end

def say_species
  "I am a #{self.species}."
end

def buy_fish (name)
 pets[:fishes] << Fish.new(name)
end

def buy_dog (name)
 pets[:dogs] << Dog.new(name)
end

def buy_cat (name)
 pets[:cats] << Cat.new(name)
end

def walk_dogs
pets[:dogs].each {|dog|
    dog.mood=("happy")
  }
end

def play_with_cats
pets[:cats].each {|cat|
    cat.mood=("happy")
  }
end

def feed_fish
pets[:fishes].each {|fish|
    fish.mood=("happy")
  }
end

def sell_pets
  self.pets.each {|type, pets|
      pets.each {|pet|
        pet.mood= "nervous"
      }
      pets.clear
    }
end

def list_pets
  # binding.pry
   "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
#   binding.pry
end
end
