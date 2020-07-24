class Cat
  # code goes here

attr_reader :name
attr_accessor :mood

  @@cats = []

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@cats << self
  end


end
