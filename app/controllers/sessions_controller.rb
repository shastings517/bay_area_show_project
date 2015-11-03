class SessionsController < ApplicationController
  def login
  end

   def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to shows_path
   end

   def destroy
    session[:user_id] = nil
    redirect_to login_path
   end
end
