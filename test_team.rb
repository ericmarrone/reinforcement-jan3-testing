require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Super Team", 10, ["john", "bob"])
  end

  def test_to_hash
    actual = @team.to_hash
    expected = {team_name: "Super Team", level: 10, points: 0}
    assert_equal(actual, expected)
  end

end
