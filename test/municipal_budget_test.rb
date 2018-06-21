require 'minitest/autorun'
require 'minitest/pride'
require './lib/municipal_budget'

class DepartmentTest < Minitest::Test

  def test_it_exists
    mb = MunicipalBudget.new

    assert_instance_of MunicipalBudget, mb
  end

  def test_it_has_attributes
    mb = MunicipalBudget.new

    assert_equal ([]), mb.expenses 
  end
end
