class ShowsController < ApplicationController
  def index
  @shows = Show.all
  end

  def new
    @show = Show.new
  end

  def edit
  end

    def show
    @show = Show.find params[:id]
 end
end


