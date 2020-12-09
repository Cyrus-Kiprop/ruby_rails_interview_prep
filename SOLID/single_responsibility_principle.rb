
# class that does not obey the single responsibility principle i,e

# 

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


# consider the following deal processor class

class DealProcessor
  def initialize(deals)
    @deals = deals # an array of deals waiting to be processed
  end

  def process
    @deals.each do |deal|
      Commission.create(deal: deal, amount: calculate_commission)
      mark_deal_processed
    end
  end


  def mark_deal_processed
    @deal.process = true
    @deal.save!
  end

  def calculate_commission
    @deal.dollar_amount * 0.05
  end

end

# A change to how we calculate the commision would require a change to this class

class DealProcessor
  def initialize(deals)
    @deals = deals
  end

  def process
    @deals.each do |deal|
      mark_deal_processed
      CommissionCalculator.new.create_commission(deal)
    end
  end

  private

  def mark_deal_processed
    @deal.processed = true
    @deal.save!
  end
end

class CommissionCalculator
  def create_commission(deal)
    Commission.create(deal: deal, amount: deal.dollar_amount * 0.05)
  end
end