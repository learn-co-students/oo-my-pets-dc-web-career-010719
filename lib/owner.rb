require 'pry'

class Owner
  # code goes here

  attr_reader :owner, :species
  attr_accessor :name, :pets

  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def say_species
    return "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes]  <<Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
    dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
    cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
    fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do | pet, pet_names|
      pet_names.each do |animal|
        animal.mood = "nervous"
        end
      pet_names.clear
      end
    end


    def list_pets
      str = "I have"
      self.pets.each do |pet, pet_names|
        if pet.to_s == "fishes"
          str += " #{pet_names.size} fish, "
        elsif pet.to_s == "dogs"
          str += "#{pet_names.size} dog(s), and"
        else str += " #{pet_names.size} cat(s)."
        end
      end
      # binding.pry
      str
    end
  end
