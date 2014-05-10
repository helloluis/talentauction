class Professionals::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def linkedin
    binding.remote_pry
    @professional = Professional.find_for_linkedin_oauth(request.env["omniauth.auth"])

  end

  def github
    @professional = Professional.find_for_github_oauth(request.env["omniauth.auth"])

    if @professional.persisted?
      # binding.pry_remote
      sign_in_and_redirect :professional, @professional, :event => :authentication #this will throw if @professional is not activated
      set_flash_message(:notice, :success, :kind => "Github") if is_navigational_format?
      @current_professional = current_user
    else
      # binding.pry_remote
      session["devise.github_data"] = request.env["omniauth.auth"]
      redirect_to new_profesional_registration_url
    end
  end
end
