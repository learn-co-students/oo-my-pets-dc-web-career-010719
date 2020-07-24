class Dog
  # code goes here
  attr_reader :name
  attr_accessor :mood

    @@dogs = []

    def initialize(name)
      @name = name
      @mood = "nervous"
      @@dogs << self
    end



end
