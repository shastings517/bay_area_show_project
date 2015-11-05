class SessionsController < ApplicationController

   def create
      user = User.from_omniauth(env["omniauth.auth"])
   session[:user_id] = user.id
   redirect_to root_path

   end
    

   def destroy
    session[:user_id] = nil
    reset_session
    redirect_to session_path
   end

  


end


