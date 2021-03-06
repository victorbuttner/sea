class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if !session[:order_id].nil? 
      Order.find(session[:order_id])
    else
      Order.new
    end
  end



  rescue_from CanCan::AccessDenied do |exception|
  redirect_to '/', :alert => exception.message
  end

protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

end
