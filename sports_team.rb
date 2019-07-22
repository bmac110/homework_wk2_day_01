class Team

  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def team_name()
    return @team_name
  end

  def players()
    return @players
  end

  def coach_name()
    return @coach
  end

  def set_coach_name(name)
    @coach = name
  end

  def add_new_player(name)
    @players.push(name)
  end

  def check_player_array(name)
    @players.include?(name)

  end

  

end
