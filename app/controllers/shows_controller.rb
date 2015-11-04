class ShowsController < ApplicationController
  def index

    @response = Typhoeus::Request.new("http://api.bandsintown.com/events/search.json?location=San+Francisco,CA&date=2015-11-03,2015-11-07&radius=10&app_id=777").run
    @response_body = JSON.parse(@response.response_body)

    # All the user-defined shows in the db
    @shows = Show.all
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
      if @show.save
       redirect_to root_path
      else
      redirect_to new_user_show_path
     end
  end

  def edit
  end

  def show
      @show = Show.find params[:id]
  end
   

   private

   def show_params
      params.require(:show).permit(
        :title,
        :venue,
        :image_url,
        :description,
        :genre,
        :price,
        :showdate,
        :saledate,
        :address
        )
   end
end



