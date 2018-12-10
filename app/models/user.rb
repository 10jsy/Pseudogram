class User < ApplicationRecord

  # validates input of username within field with given max min boundary	
  validates :username, presence: true, length: {minimum: 2, maximum: 18}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable
end
