class SessionsController < ApplicationController

  # OAUTH CREATE USER
   def create
     user = User.from_omniauth(env["omniauth.auth"])
   session[:user_id] = user.id
   redirect_to root_path
   end

  def login
  end


  def attempt_login
    if params[:username].present? && params[:password].present?
    # found in the db
    found_user = User.where(username: params[:username]).first
      if found_user
        # found in db AND password is correct
        authorized_user = found_user.authenticate(params[:password]) 
        if authorized_user
          session[:user_id] = authorized_user.id
          flash[:success] = "Logged in Succesfully!"
          redirect_to root_path
        else
          flash[:alert] = "Error in logging in. Please try again"
          redirect_to login_path
        end
      else
        redirect_to login_path
     end
    else
      redirect_to login_path
   end
  end

  # STANDARD USER SIGN UP
   def manual
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "You are now logged in!"
      redirect_to root_path
    else
      render :signup
    end
   end
  

   def new
   end

   def sign_in
   end

   def signup
    @user = User.new
   end
   	

   def destroy
    session[:user_id] = nil
    reset_session
    redirect_to session_path
   end

   private
  def user_params
    params.require(:user).permit(:name,:email,:username, :password, :password_digest)
  end


end



