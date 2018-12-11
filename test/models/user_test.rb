require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "email validation" do
		assert_not User.new(username: 'username').save
	end

	test "should create user" do
		visit sign_up_url
		fill_in 'Username', with: 'testtesttest'
		fill_in 'Email', with: 'testingaccount@gmail.com'
		fill_in 'Password', with: '111111'
		fill_in 'Password confirmation', with: '111111'
		click_button 'Sign up'
		assert_response :success
	end
end
