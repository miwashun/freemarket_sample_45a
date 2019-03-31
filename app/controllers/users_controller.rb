class UsersController < ApplicationController
  before_action :before_login, only:[:show]

  def show
    if current_user.id != params[:id]
      redirect_to root_path
    end
  end

  def before_sign_up

  end

  def identification
    
  end

  def profile

  end

  def logout

  end

  def before_login
    redirect_to new_user_session_path unless user_signed_in?
  end

end
