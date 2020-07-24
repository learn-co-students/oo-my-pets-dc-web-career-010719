class Fish
  attr_reader :name
  attr_accessor :mood

    def initialize(name="Nemo", mood="nervous")
      @name = name
      @mood = mood
    end
end
