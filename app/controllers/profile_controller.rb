class ProfileController < ApplicationController
  def show
    @profile = current_user.profile
  end

  def edit
    @profile = current_user.profile
  end

  def update
    current_user.profile.update(profile_params)
    redirect_to current_user.profile
end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :employee_id, :cell_phone, :address, :current_location, :linkedIn_profile, :github_profile, :twitter_profile, :avatar)
  end
end
