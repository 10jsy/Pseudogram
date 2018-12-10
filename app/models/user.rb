class User < ApplicationRecord
	# validates input of username within field with given max min boundary	
	validates :username, presence: true, length: {minimum: 2, maximum: 18}

	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

	# User will have many posts
	has_many :posts, dependent: :destroy

	# User will have many comments, if user is destroyed all comments are destroyed
	has_many :comments, dependent: :destroy
end
