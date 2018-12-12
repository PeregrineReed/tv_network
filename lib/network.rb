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
    highest_paid = characters.flatten.max_by do |actor|
      actor.salary
    end
    highest_paid.actor
  end

  def payroll
    payroll_list = {}
    @shows.each do |show|
      show.characters.each do |character|
        payroll_list[character.actor] = character.salary
      end
    end
    payroll_list
  end

end
