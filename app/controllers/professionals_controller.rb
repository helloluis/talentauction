class ProfessionalsController < ApplicationController

  def edit_profile
    @professional = current_professional
  end
end
