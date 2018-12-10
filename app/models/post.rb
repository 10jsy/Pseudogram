class Post < ActiveRecord::Base

	# post must have a linked uploader user at creation
	validates :user_id, presence: true

	# resize image uploaded to 640x640, like IG
	has_attached_file :image, styles: { :medium => "640x640#" }
	# validates that the uploaded file is image file
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	# a post will belong to its uploader ie  user
	belongs_to :user

end
