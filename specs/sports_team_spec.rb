require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team.rb")

class TestStudent < MiniTest::Test

  def setup()
    @team = Team.new("Leggy Ball Men", ["Billy", "Jimmy", "Bob"], "Coach big legs", 0)
  end

  def test_get_team_name()
    assert_equal("Leggy Ball Men", @team.team_name)
  end

  def test_get_players()
    assert_equal(["Billy", "Jimmy", "Bob"], @team.players)
  end

  def test_get_coach()
    assert_equal("Coach big legs", @team.coach_name)
  end

  def test_set_coach_name()
    @team.set_coach_name("Coach small legs")
    assert_equal("Coach small legs", @team.coach_name)
  end

  def test_add_new_player()
    @team.add_new_player("Tam")
    assert_equal(["Billy", "Jimmy", "Bob", "Tam"], @team.players)
  end

  def test_check_player_array()
    assert_equal(true, @team.check_player_array("Billy"))
  end

  def test_check_player_array()
    assert_equal(false, @team.check_player_array("eggboy"))
  end

  # def test_did_team_win()
  #   @team.did_team_win(true)
  #   assert_equal(2, @team.result)
  # end
  #
  # def test_did_team_lose()
  #   @team.did_team_lose(true)
  #   assert_equal(0, @team.result)
  # end

  def test_team_outcome()
    @team.team_outcome("win")
    assert_equal(1, @team.result)
  end
end
