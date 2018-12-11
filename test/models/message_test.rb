require 'test_helper'

class MessageTest < ActiveSupport::TestCase

	test 'responds to name, email and body' do
		msg = Message.new

		assert msg.respond_to?(:name), 'no response to :name'
		assert msg.respond_to?(:amil), 'no response to :email'
		assert msg.respond_to?(:body), 'no response to :body'
	end
end
