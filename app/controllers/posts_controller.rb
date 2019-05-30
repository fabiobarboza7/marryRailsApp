class PostsController < ApplicationController

	def create
		@post = Post.new(post_params)
		@post.profile_id = current_user.profile.id
		if @post.save!
			redirect_to profiles_path
			flash[:notice] = "Post have been created"
		end
	end

	private

	def post_params
		params.require(:post).permit(:content, :profile_id)
	end

end
