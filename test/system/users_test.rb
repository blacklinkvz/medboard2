require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Bloodtype", with: @user.bloodtype_id
    fill_in "Country", with: @user.country_id
    fill_in "Email", with: @user.email
    fill_in "Lastname", with: @user.lastname
    fill_in "Name", with: @user.name
    fill_in "Passport", with: @user.passport
    fill_in "Password digest", with: @user.password_digest
    fill_in "Rut", with: @user.rut
    fill_in "S lastname", with: @user.s_lastname
    fill_in "S name", with: @user.s_name
    fill_in "Usertype", with: @user.usertype_id
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Bloodtype", with: @user.bloodtype_id
    fill_in "Country", with: @user.country_id
    fill_in "Email", with: @user.email
    fill_in "Lastname", with: @user.lastname
    fill_in "Name", with: @user.name
    fill_in "Passport", with: @user.passport
    fill_in "Password digest", with: @user.password_digest
    fill_in "Rut", with: @user.rut
    fill_in "S lastname", with: @user.s_lastname
    fill_in "S name", with: @user.s_name
    fill_in "Usertype", with: @user.usertype_id
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
