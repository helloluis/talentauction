class SearchesController < ApplicationController

  before_action :authenticate_recruiter!

  def show
    @professionals = Professional.all.decorate
  end

end
