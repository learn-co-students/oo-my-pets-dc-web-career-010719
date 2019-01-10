class Dog

  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood="nervous")
    @name, @mood = name, mood
  end

end
