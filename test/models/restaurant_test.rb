require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = users(:michael)
    @restaurant = @user.restaurants.build(description: "Lorem ipsum")
  end

  test "should be valid" do
    assert @restaurant.valid?
  end

  test "user id should be present" do
    @restaurant.user_id = nil
    assert_not @restaurant.valid?
  end

  test "description should be present" do
    @restaurant.description = "   "
    assert_not @restaurant.valid?
  end

  test "description should be at most 300 characters" do
    @restaurant.description = "a" * 301
    assert_not @restaurant.valid?
  end
end
