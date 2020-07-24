class Cat
  # code goes here
  attr_reader :name, :mood, :species

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
    @speices = "cat"
  end

  def mood=(mood)
    @mood = mood
  end

  def say_species
    "I am a #{species}."
  end

end
