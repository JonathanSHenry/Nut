require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:michael)
    # This code is not idiomatically correct.
    @restaurant = @user.restaurants.build(name: "Lorem ipsum")
  end

  test "should be valid" do
    assert @restaurant.valid?
  end

  test "user id should be present" do
    @restaurant.user_id = nil
    assert_not @restaurant.valid?
  end

  # test "menu should be present" do
  #   @restaurant.menu = "   "
  #   assert_not @restaurant.valid?
  # end

end
