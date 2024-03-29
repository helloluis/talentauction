class ProfessionalsController < ApplicationController

  before_action :set_professional_from_session, except: [:show]

  def show
    @professional = Professional.find(params[:id]).decorate
  end

  def edit_profile
  end

  def edit_requirement
  end

  def preview_profile
  end

  def awaiting_approval
  end

  def update
    if @professional.update_attributes(professional_params)
      redirect_to professional_preview_profile_path(@professional)
    else
      render 'edit_requirement'
    end
  end

  private

  def professional_params
    params.require(:professional).permit( requirement_attributes: [:minimum_annual_salary,
                                 :salary_currency,
                                 :summary,
                                 :ideal_job_summary,
                                 :additional_info] )
  end

  def set_professional_from_session
    @professional = current_professional
  end
end
