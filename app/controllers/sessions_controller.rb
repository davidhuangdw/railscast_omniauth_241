class SessionsController < ApplicationController
  def new
  end
  def create
    # raise env['omniauth.auth'].to_yaml
    user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_url, notice:'Log in successfully.'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice:'Log out successfully.'
  end
  def fail
    redirect_to root_url, alert:'Auth fails.'
  end
end
