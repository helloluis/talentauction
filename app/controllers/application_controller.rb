class ApplicationController < ActionController::Base
  include Pundit

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def after_sign_in_path_for(resource)
    if resource.is_a? Professional
      professional_edit_profile_path(resource)
    elsif resource.is_a? Recruiter
      recruiter_edit_profile_path(resource)
    end
  end
end
