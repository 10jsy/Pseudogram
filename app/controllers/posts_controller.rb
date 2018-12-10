class PostsController < ApplicationController

	# only logged in users can perform actions
	before_action :authenticate_user!

	# identify what post the action is being performed on
	before_action :post_identify, only: [:show, :destroy]

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
		# if post is successully created, go to home, else render new
		if @post = Post.create(post_params)
			redirect_to posts_path
		else
			render :new
		end
	end

	#show controller action to get and display individual posts
	def show
		@post = Post.find(params[:id])
	end

	#destroy action for deleting posts
	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end

	# private method ie only available within this class
	private

		def post_params
			# only image and description accepted
			params.require(:post).permit(:image, :description)
		end

		def post_identify
			@post = Post.find(params[:id])
		end
end