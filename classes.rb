class Student


  def initialize(holder_name, cohort_name)
    @holder_name = holder_name
    @cohort_name = cohort_name
  end

  def holder_name()
    return @holder_name
  end

  def cohort_name()
    return @cohort_name
  end

  def set_holder_name(name)
    @holder_name = name
  end

  def set_cohort_name(name)
    @cohort_name = name
  end

  def can_talk()
    return "I can talk"
  end

  def student_fav_language(language)
    return "I love #{language}"
  end
end
