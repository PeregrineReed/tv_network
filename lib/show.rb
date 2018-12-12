class Show

  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.inject(0) do |total, actor|
      total + actor.salary
    end
  end

end
