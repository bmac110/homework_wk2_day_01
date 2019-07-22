require("minitest/autorun")
require("minitest/rg")
require_relative("../classes.rb")

class TestStudent < MiniTest::Test

  def setup()
    @student = Student.new("Billy", "G14")
  end
