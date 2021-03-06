class ProfilesController < ApplicationController
  
  def index
    @profiles = Profile.all
    @post = Post.new

    # Address
    @address = Address.where.not(latitude: nil, longitude: nil)

    @markers = @address.map do |add|
      {
        lat: add.latitude,
        lng: add.longitude,
        infoWindow: render_to_string(partial: "user_address", locals: { address: add }),
        image_url: helpers.asset_url('https://superprix.vteximg.com.br/arquivos/ids/175177-600-600/Maca-Fuji--1-unidade-aprox.-200g-.png')
      }
    end
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
