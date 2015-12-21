class UsersController < ApplicationController
  def index
    @users = User.all
    respond_to do |format|
      format.json { render json: @users }
      format.html
    end
  end

  def show
    @user = User.find params[:id]
    respond_to do |format|
      format.json { render json: @user.to_json(include: :shows)}
      format.html
    end
  end

  def follow
  @user = User.find(params[:id])

  if current_user
    if current_user == @user
      flash[:error] = "You cannot follow yourself."
       redirect_to(:back)
    else
      current_user.follow(@user)
      # RecommenderMailer.new_follower(@user).deliver if @user.notify_new_follower
      flash[:notice] = "You are now following #{@user.name}."
       redirect_to(:back)
    end
  else
   flash[:notice] = "You are already following #{@user.name}."
end
end

def unfollow
  @user = User.find(params[:id])

  if current_user
    current_user.stop_following(@user)
    flash[:notice] = "You are no longer following #{@user.name}."
    redirect_to(:back)

  end
end



  def edit
  end
end