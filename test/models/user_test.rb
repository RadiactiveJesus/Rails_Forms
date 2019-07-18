require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new({username:'dummy',email:'fb@pro.com',password:'password'})
  end
  test "should be valid" do
   assert @user.valid?
  end
  test "should be true for an empty username"  do
    @user.username = '  '
    assert_not @user.valid?
  end
  test "should be true for an empty email"  do
    @user.email = '  '
    assert_not @user.valid?
  end
  test "should be true for an empty password"  do
    @user.password = '  '
    assert_not @user.valid?
  end
end
