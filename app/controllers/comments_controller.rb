class CommentsController < ApplicationController

	# these before doing anything:
	before_action :set_user
	before_action :set_post

	# create action controller for comments
	def create
		@comment = @post.comments.create(comment_params)

		if @comment.save
			flash[:success] = "Nice remark!"
			redirect_to @post
		else
			flash[:alert] = "Something went wrong 😢"
			redirect_to @post
		end
	end

	# destroy action controller for comments
	def destroy
		@comment.destroy
		flash[:success] = "You removed your comment..."
		redirect_to root_path
	end

	# private methods to this controller
	private

		def set_post
			@post = User.posts.find(params[:post_id])
		end

		def set_user
			@user = User.find(params[:user_id])
		end

		def comment_params
			params[:comment].permit(:content)
		end

end