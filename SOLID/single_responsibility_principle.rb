
# class that does not obey the single responsibility principle i.e

class Student
  attr_accessor :first_term_home_work, :first_term_test, :first_term_paper
  attr_accessor :second_term_home_work, :second_term_test,
    :second_term_paper

  def first_term_grade
    (first_term_home_work + first_term_test + first_term_paper) / 3
  end

  def second_term_grade
    (second_term_home_work + second_term_test + second_term_paper) / 3
  end

end


# refactoring the above class to respect the single responsibility principle
#

class Student

end


class Grade

  def initialize(name,  )
  (home_work + test + paper) / 3
end
