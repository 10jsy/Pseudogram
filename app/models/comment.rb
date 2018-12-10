class Comment < ApplicationRecord
	#comment belongs to user post
	belongs_to :user
	belongs_to :post
end
