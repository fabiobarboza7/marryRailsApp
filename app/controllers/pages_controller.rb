class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  	@user = User.new
  	if user_signed_in?
  		redirect_to profiles_path
  	end
  end
end
