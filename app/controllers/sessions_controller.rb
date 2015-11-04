class SessionsController < ApplicationController

   def create
      user = User.from_omniauth(env["omniauth.auth"])
   session[:user_id] = user.id
   redirect_to root_path
<<<<<<< HEAD
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
=======
>>>>>>> follow
   end

   def attempt_login 
   end
  

   def signup
    redirect_to facebook_path
   end
   	

   def destroy
    session[:user_id] = nil
    reset_session
    redirect_to session_path
   end

  


end



