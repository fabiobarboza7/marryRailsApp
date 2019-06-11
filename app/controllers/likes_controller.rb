class LikesController < ApplicationController
	before_action :load_likeable


	def index
		# @likeable = Profile.find(params[:Profile_id])
		@likes = @likeable.likes.count
	end

	def new
		@like = @likeable.likes.new
	end

	def create
		@profiles = Profile.all
		@like = @likeable.likes.new
		@like.profile_id = current_user.profile.id
		if @like.save!
		  respond_to do |format|
		  	format.html { redirect_to profiles_path }
	      format.js
	    end
		end
	end

	private

	def load_likeable
		resource, id = request.path.split('/')[1,2]
    @likeable = resource.singularize.classify.constantize.find(id)
	end

end
