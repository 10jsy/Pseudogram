require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
	setup do
		@user = users(:one)
	end

	test "index action true?" do
		get :index
		assert_response :success
	end

	test "Should redirect to login when user is not logged in"  do
    	get action, {id: 1}
    	assert_redirected_to '/users/sign_in'
    end

end
