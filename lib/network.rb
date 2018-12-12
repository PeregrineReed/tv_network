class Network

  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(title)
    @shows << title
  end

  def highest_paid_actor
    characters = @shows.map do |show|
      show.characters
    end
    best_paid = characters.flatten.max_by do |actor|
      actor.salary
    end
    best_paid.actor
  end

end
