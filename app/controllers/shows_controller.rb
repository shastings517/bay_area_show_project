class ShowsController < ApplicationController
  def index
  @shows = Show.all
  end

  def new
  end

  def edit
  end

    def show
  	  begin
    @show = Show.find params[:id]
  rescue
    flash[:error] = "No Shows Found"
    redirect :action => :index
 end
end
end

