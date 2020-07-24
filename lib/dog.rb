class Dog

  attr_reader :name
  attr_accessor :mood

    def initialize(name="Daisy", mood="nervous")
      @name = name
      @mood = mood
    end
end
