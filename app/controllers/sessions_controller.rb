class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(username: params[:session][:username])

    if user
      if user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        redirect_to blocks_path
      else
        flash[:danger] = "Username/Password is incorrect"
        redirect_to root_path
      end
    else
      flash[:danger] = "Username/Password is incorrect"
      redirect_to root_path
    end
  end
end
