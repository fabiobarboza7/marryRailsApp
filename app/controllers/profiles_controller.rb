class ProfilesController < ApplicationController
  
  def index
    @profiles = Profile.all
  end

  def new
    if current_user.profile.nil?
      @profile = Profile.new
      @profile.build_address
    else
      flash[:alert] = "You already create you profile"
      redirect_to profiles_path
    end

  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
  	if @profile.save 
      flash[:notice] = "Success created"
      redirect_to profiles_path
    else
      flash[:alert] = "Try again"
    end

  end

  private

  def profile_params
  	params.require(:profile).permit(
      :user_id, :first_name, :last_name, :gender, :date_of_birth, 
      :photo, :occupation, :about_me, :religion_id, address_attributes: [ :city, :state, :zip_code, :country ],
      )
  end
  
end
