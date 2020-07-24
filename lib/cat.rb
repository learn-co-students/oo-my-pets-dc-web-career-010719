class Cat
  attr_accessor :mood
  attr_reader :name #it won't change

  def initialize (name)
    @name = name
    @mood = "nervous"
    
  end
end