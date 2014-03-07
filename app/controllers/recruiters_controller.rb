class RecruitersController < ApplicationController
  def edit_profile
    @recruiter = current_recruiter
  end
end
