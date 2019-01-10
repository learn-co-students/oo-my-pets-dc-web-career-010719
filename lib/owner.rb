require 'pry'

class Owner
  # code goes here

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(argument)
    @argument = argument
    @pets = {:cats=> [], :dogs=> [], :fishes=> []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood="happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood="happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood="happy"
    end
  end

  def sell_pets
    @pets.each do |pet_type, pet|
      pet.each do |name|
        name.mood="nervous"
      end
    end
    @pets = {}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end



end
