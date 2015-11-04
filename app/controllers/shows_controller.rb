class ShowsController < ApplicationController

  before_action :find_show, only: [:show,:edit,:update,:destroy]

  def index

    @response = Typhoeus::Request.new("http://api.bandsintown.com/events/search.json?location=San+Francisco,CA&date=2015-11-03,2015-11-07&radius=10&app_id=777").run
    @response_body = JSON.parse(@response.response_body)

    # All the user-defined shows in the db

     # ####  CURRENTLY NOT FILTERING OUT ANY SHOWS BY DATE!!! #####
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

  # render the edit form
  def edit
  end

  def update
    @show.update(show_params)
    if@show.save
      flash[:success] = "#{@show.title} has been updated!"
      redirect_to root_path
    else
      render :edit
    end
  end


  # MODAL --> Shouldn't navigate away from index page
  def show
  end

  def destroy
    @show = Show.find params[:id]
    @show.destroy
    flash[:alert] = "#{@show.title} has been deleted"
    redirect_to root_path
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

    def find_show
      @show = Show.find params[:id]
    end
end



