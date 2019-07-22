class Team

  attr_accessor :team_name, :players, :coach, :result

  def initialize(team_name, players, coach, result)
    @team_name = team_name
    @players = players
    @coach = coach
    @result = result
  end

  # def team_name()
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
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

  # def did_team_win(result)
  #   if result == true
  #     @result += 1
  #   end
  # end

  # def did_team_lose(result)
  #   if result == true
  #     @result -= 1
  #   end
  # end

  def team_outcome(result)
    if result == "win"
      @result += 1
    else
      @result -= 1
    end
  end





end
