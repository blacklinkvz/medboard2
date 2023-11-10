require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { bloodtype_id: @user.bloodtype_id, country_id: @user.country_id, email: @user.email, lastname: @user.lastname, name: @user.name, passport: @user.passport, password: @user.password, rut: @user.rut, s_lastname: @user.s_lastname, s_name: @user.s_name, usertype_id: @user.usertype_id } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { bloodtype_id: @user.bloodtype_id, country_id: @user.country_id, email: @user.email, lastname: @user.lastname, name: @user.name, passport: @user.passport, password: @user.password, rut: @user.rut, s_lastname: @user.s_lastname, s_name: @user.s_name, usertype_id: @user.usertype_id } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
