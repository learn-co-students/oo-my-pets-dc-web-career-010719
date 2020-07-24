require 'pry'
require_relative "cat.rb"
require_relative "dog.rb"
require_relative "fish.rb"

class Owner
  # code goes here
attr_accessor :pets, :name
attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    change_mood(:dogs, "happy")
  end

  def play_with_cats
    change_mood(:cats, "happy")
  end

  def feed_fish
   change_mood(:fishes, "happy")
  end

  def change_mood(symbol, mood)
    if !pets[symbol].empty?
      pets[symbol].each do |pet|
        pet.mood = mood
      end
   end
 end

  def sell_pets
    change_mood(:fishes, "nervous")
    change_mood(:cats, "nervous")
    change_mood(:dogs, "nervous")
    self.pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    fish = pets[:fishes].length
    dog = pets[:dogs].length
    cat = pets[:cats].length
    return "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end
end
