class ShowsController < ApplicationController
  def index

    @response = Typhoeus::Request.new("http://api.bandsintown.com/events/search.json?location=San+Francisco,CA&date=2015-11-03,2015-11-07&radius=10&app_id=777").run
    @response_body = JSON.parse(@response.response_body)

    # All the user-defined shows in the db
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

