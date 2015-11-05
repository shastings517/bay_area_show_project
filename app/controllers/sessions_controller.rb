class SessionsController < ApplicationController
    # before_action :prevent_login_signup, only: [:signup, :create, :login, :attempt_login]

    # render signup page
   def signup
    @user = User.new
   end

   # render login page
   def login
   end

   # create a new user from signup
   def create
      @user = User.create user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :signup
    end
   end

   # login post
  def attempt_login
    puts "INSIDE THE ATTEMPT LOGIN"
    if params[:user][:username].present? && params[:user][:password].present?
      found_user = User.where(username: params[:user][:username]).first
      if found_user && found_user.authenticate(params[:user][:password])
        flash[:alert] = "Welcome back #{found_user.email}!"
        session[:user_id] = found_user.id
        redirect_to root_path
      else
        flash[:alert] = "username / password combination is invalid"
        redirect_to login_path(@user)
      end
    else
      # binding.pry
      flash[:alert] = "please enter username and password"
      redirect_to login_path
    end
  end

  def logout
    # session.clear
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to login_path
  end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :password,
      :avatar_url,
      :email
    )
  end
    

   

  


end


