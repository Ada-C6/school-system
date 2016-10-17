class SessionsController < ApplicationController
  def index
    if session[:user_id].nil?
      redirect_to login_failure_path
      return
    end
    @user = User.find(session[:user_id])
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_failure_path
  end

  def create
    auth_hash = request.env['omniauth.auth']
    redirect_to login_failure_path if auth_hash['uid'].nil?

    @user = User.find_by(uid: auth_hash[:uid], provider: 'github')
    if @user.nil?
      # User doesn't match anything in the DB.
      # Attempt to create a new user.
      @user = User.build_from_github(auth_hash)
      render :creation_failure unless @user.save
    end

    session[:user_id] = @user.id

    redirect_to sessions_path
  end

  def login_failure
  end


end
