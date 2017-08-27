require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerFood < Test::Unit::TestCase
  def setup
    @tester = Faker::Food
  end

  def test_dish
    assert @tester.dish.match(/\w+/)
  end

  def test_ingredient
    assert @tester.ingredient.match(/\w+/)
  end

  def test_spice
    assert @tester.spice.match(/\w+/)
  end

  def test_measurement
    assert @tester.measurement.split(" ").length == 2
  end
  
  def test_metric_measurement
    assert @tester.metric_measurement.match(/\w+/)
  end  
end
