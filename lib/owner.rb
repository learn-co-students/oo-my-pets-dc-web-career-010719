class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  @@all_owners = []

  def initialize(species)
    @species = species
    reset_pets
    @@all_owners << self
  end

  def self.all
    return @@all_owners
  end

  def self.count
    return @@all_owners.count
  end

  def self.reset_all
    @@all_owners = []
  end

  def reset_pets
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name) #creates a new fish
    @pets[:fishes] << fish #shovels a created fish into pets hash
  end

  def buy_cat(name)
    cat = Cat.new(name) #creates a new cat
    @pets[:cats] << cat #shovels a created fish into pets hash
  end

  def buy_dog(name)
    dog = Dog.new(name) #creates a new dog
    @pets[:dogs] << dog #shovels a created fish into pets hash
  end

  def walk_dogs
    # @pets[:dogs] -> ["Snuffles", etc]
    @pets[:dogs].each do |dog| # loop over each dog
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    # @pets[:dogs] -> ["Snuffles", etc]
    @pets[:cats].each do |cat| # loop over each dog
      cat.mood = 'happy'
    end
  end

  def feed_fish
    # @pets[:dogs] -> ["Snuffles", etc]
    @pets[:fishes].each do |fish| # loop over each dog
      fish.mood = 'happy'
    end
  end

  def sell_pets
    @pets.each do |type_of_pet, pet_array|
      # type_of_pet -> :dogs
      # pet_array -> []
      pet_array.each do |pet|
        pet.mood = 'nervous'
      end
    end
    reset_pets
  end

  def list_pets
    fish_count = @pets[:fishes].length
    dog_count = @pets[:dogs].length
    cat_count = @pets[:cats].length
    return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end