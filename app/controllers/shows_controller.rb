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

    # find_user --> need to hold off on this until we have User up and runnign.
    #  But we need to push a show that a user created into a user's shows []
    @show = Show.new(show_params)
      if @show.save
       flash[:success] = "New Show Created!"
       redirect_to root_path
      else
      render :new
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

    def find_user
      @user = current_user
    end
end



