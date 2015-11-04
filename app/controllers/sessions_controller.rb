class SessionsController < ApplicationController

  def login
  end

   def create
     user = User.from_omniauth(env["omniauth.auth"])
   session[:user_id] = user.id
   redirect_to root_path
   end



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

   def attempt_login 
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



