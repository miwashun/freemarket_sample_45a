class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :store_current_location, unless: :devise_controller? || :users_controller?


  private
  def store_current_location
    store_location_for(:user, request.url)
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
