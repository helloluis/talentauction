class ProfessionalsController < ApplicationController

  before_action :set_professional, only: [:edit_profile, :edit_requirement, :update]

  def edit_profile
  end

  def edit_requirement
  end

  private

  def set_professional
    @professional = current_professional
  end
end
