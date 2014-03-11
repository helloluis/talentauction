class SearchesController < ApplicationController

  before_action :authenticate_recruiter!

  def show
    @results = Professional.all

  end

end
