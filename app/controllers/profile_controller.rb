class ProfileController < ApplicationController
  def show
    if User.find(params[:id]).nil?
      @profile = current_user.profile
    else
      @user = User.find(params[:id])
      @profile = @user.profile
    end
  end

  
  def edit
    @profile = current_user.profile
  end

  def update
    current_user.profile.update(profile_params)
    current_user.save!
    redirect_to current_user.profile
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :employee_id, :cell_phone, :address, :current_location, :linkedIn_profile, :github_profile, :twitter_profile, :avatar)
  end

end
