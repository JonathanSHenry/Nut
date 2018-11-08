require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  require 'bcrypt'

  def setup
    @user = User.new(first_name: 'test', last_name: 'tester', password: BCrypt::Password.create("my password") ,email: 'test1@mail.com', password_confirmation: 'my password')
  end
  test 'should be valid' do
    assert @user.valid?
  end

  
  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
end
