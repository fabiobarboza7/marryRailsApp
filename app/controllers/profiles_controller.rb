class ProfilesController < ApplicationController
  
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
    @profile.build_address
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
  	@profile.save ? flash[:notice] = "Success created" : flash[:alert] = "Try again"
  end

  private

  def profile_params
  	params.require(:profile).permit(:user_id, :first_name, :last_name, :gender, :date_of_birth, :photo, :occupation, :about_me, address_attributes: [ :city, :state, :zip_code, :country ])
  end
  
end
