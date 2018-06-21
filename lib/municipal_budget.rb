class MunicipalBudget

  attr_reader   :expenses

  def initialize
    @expenses = []
  end

  def add_expense(expense)
    @expenses << expense
  end

  def departments
    @expenses.map do |expense|
      expense.department
    end
  end

  def budget_categories
    @expenses.map do |expense|
      expense.budget_category
    end
  end 
end
