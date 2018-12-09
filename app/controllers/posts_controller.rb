class PostsController < ApplicationController
	#index controller action 
	def index
		# get all posts from database post model to index controller action
		@posts = Post.all
	end

	#new controller action; create new post with image
	def new
		@post = Post.new
	end

	#create controller action with private method post_params
	def create
		@post = Post.create(post_params)
		#redirects user back to home/posts after creating post
		redirect_to posts_path
	end

	# private method ie only available within this class
	private

		def post_params
			# only image and description accepted
			params.require(:post).permit(:image, :description)
		end

end
