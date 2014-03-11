class RecruitersController < ApplicationController
  before_action :set_recruiter

  def edit_profile

  end

  def update
    if @recruiter.update_attributes(recruiter_params)
      redirect_to recruiter_edit_requirement_path(@recruiter)
    else
    end
  end

  def edit_requirement
    
  end

  private

  def set_recruiter
    @recruiter = current_recruiter
  end

  def recruiter_params
    params.require(:recruiter).permit( profile_attributes: [:company_name,
                                                           :company_size,
                                                           :industry,
                                                           :country,
                                                           :city,
                                                           :summary,
                                                           :additional_info ] )
  end
end
