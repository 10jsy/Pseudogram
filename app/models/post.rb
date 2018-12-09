class Post < ActiveRecord::Base

	# resize image uploaded to 640x640, like IG
	has_attached_file :image, styles: { medium: "640x640>" }
	# validates that the uploaded file is image file
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
