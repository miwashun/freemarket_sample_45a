class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials.basics[:basic_auth_user] && password == Rails.application.credentials.basics[:basic_auth_password]
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:nickname,
                                                      :last_name,
                                                      :first_name,
                                                      :last_name_kana,
                                                      :first_name_kana,
                                                      :birth_year_id,
                                                      :birth_month,
                                                      :birth_day,
                                                      :uid,
                                                      :provider])

    devise_parameter_sanitizer.permit(:account_update, keys:[:phone_number])
  end
end
