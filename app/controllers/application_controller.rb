class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[ 
                                                    :first_name,
                                                    :last_name,
                                                    :age,
                                                    :gender,
                                                    :country,
                                                    :city,
                                                    :email,
                                                    :avatar,
                                                    :password,
                                                    :remember_me
    ])
    # devise_parameter_sanitizer.for(:log_in) { |u| u.permit(
    #                                                 :email,
    #                                                 :password,
    #                                                 :remember_me
    # )}
    devise_parameter_sanitizer.permit(:account_update, keys:[
                                                    :first_name,
                                                    :last_name,
                                                    :age,
                                                    :gender,
                                                    :country,
                                                    :city,
                                                    :email,
                                                    :avatar,
                                                    :password,
                                                    :current_password,
                                                    :remember_me
  ])
    
  end
end
