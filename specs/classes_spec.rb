require("minitest/autorun")
require("minitest/rg")
require_relative("../classes.rb")

class TestStudent < MiniTest::Test

  def setup()
    @student = Student.new("Billy", "G14")
  end

  def test_get_name()
    assert_equal("Billy", @student.holder_name)
  end

  def test_get_cohort()
    assert_equal("G14", @student.cohort_name)
  end

  def test_set_name()
    @student.set_holder_name("Jimmy")
    assert_equal("Jimmy", @student.holder_name)
  end

  def test_set_cohort()
    @student.set_cohort_name("G14")
    assert_equal("G14", @student.cohort_name)
  end


  def test_can_talk()
    # @student.can_talk("I can talk")
    assert_equal("I can talk", @student.can_talk)
  end

  def test_student_fav_language()
    # @student.student_fav_language("Ruby")
    assert_equal("I love Ruby", @student.student_fav_language("Ruby"))
  end
end
