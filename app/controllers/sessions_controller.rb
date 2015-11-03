class SessionsController < ApplicationController

  def login
  end

   def create
   user = User.from_omniauth(env["omniauth.auth"])
   session[:user_id] = user.id
   redirect_to root_path
   end

  # def manual
  #   user = User.find_by(email: params[:session][:email].downcase)
  #   if user && user.authenticate(params[:session][:password])
  #     # Log the user in and redirect to the user's show page.
  #   else
  #      flash[:danger] = 'Invalid email/password combination'
  #       render 'new'
  #   end
  # end
  

   def new
   end

   def sign_in
   end
   	

   def destroy
    session[:user_id] = nil
    reset_session
    redirect_to session_path
   end


end


