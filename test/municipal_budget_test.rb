require 'minitest/autorun'
require 'minitest/pride'
require './lib/municipal_budget'
require './lib/expense'
require './lib/department'
require './lib/budget_category'

class DepartmentTest < Minitest::Test

  def test_it_exists
    municipal_budget = MunicipalBudget.new

    assert_instance_of MunicipalBudget, municipal_budget
  end

  def test_it_has_attributes
    municipal_budget = MunicipalBudget.new

    assert_equal ([]), municipal_budget.expenses
  end

  def test_it_can_add_expense
    municipal_budget = MunicipalBudget.new
    department = Department.new("Parks and Recreation")
    budget_category = BudgetCategory.new("Appliances")
    expense_1 = Expense.new(department, budget_category, "656.50")

    municipal_budget.add_expense(expense_1)

    assert_equal [expense_1], municipal_budget.expenses

    assert_equal 1, municipal_budget.expenses.count
  end

  def test_it_can_add_multiple_expenses
    municipal_budget = MunicipalBudget.new
    department = Department.new("Parks and Recreation")
    budget_category = BudgetCategory.new("Appliances")
    expense_1 = Expense.new(department, budget_category, "656.50")
    expense_2 = Expense.new(department, budget_category, "20.45")

    municipal_budget.add_expense(expense_1)
    municipal_budget.add_expense(expense_2)

    assert_equal [expense_1, expense_2], municipal_budget.expenses

    assert_equal 2, municipal_budget.expenses.count

    assert_equal [expense_1.department, expense_2.department], municipal_budget.departments
  end

  def test_it_can_return_department_name
    municipal_budget = MunicipalBudget.new
    department = Department.new("Parks and Recreation")
    budget_category = BudgetCategory.new("Appliances")
    expense_1 = Expense.new(department, budget_category, "656.50")
    expense_2 = Expense.new(department, budget_category, "20.45")

    municipal_budget.add_expense(expense_1)
    municipal_budget.add_expense(expense_2)

    assert_equal [expense_1.department, expense_2.department], municipal_budget.departments
  end

  def test_it_can_return_budget_categories
    municipal_budget = MunicipalBudget.new
    department = Department.new("Parks and Recreation")
    budget_category = BudgetCategory.new("Appliances")
    expense_1 = Expense.new(department, budget_category, "656.50")
    expense_2 = Expense.new(department, budget_category, "20.45")

    municipal_budget.add_expense(expense_1)
    municipal_budget.add_expense(expense_2)

    assert_equal [expense_1.budget_category, expense_2.budget_category], municipal_budget.budget_categories
  end
end
