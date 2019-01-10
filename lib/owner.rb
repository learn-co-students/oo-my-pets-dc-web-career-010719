class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    return "I am a #{species}."
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
    self.pets.each do |animal, pet_list|
      pet_list.each do |pet|
        pet.mood = "nervous"
      end
      self.pets[animal] = []
    end
  end

  def list_pets
    message = "I have "
    self.pets.each do |pet_kind, pet_list|
      if pet_kind == :fishes
        message = message + "#{pet_list.size} fish, "
      elsif pet_kind == :dogs
        message = message + "#{pet_list.size} dog(s), "
      else
        message = message + "and #{pet_list.size} cat(s)."
      end
    end
    message
  end

end