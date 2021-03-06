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

  def total_expenses
    @expenses.map do |expense|
      expense.amount.to_f
    end.sum
  end

  def alphabetical_budget_categories
    @expenses.map do |expense|
      expense.budget_category.name.split(' ').pop
    end.sort
  end
end
