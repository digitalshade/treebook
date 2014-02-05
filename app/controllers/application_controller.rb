class ApplicationController < ActionController::Base
before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u| 
         u.permit(:email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :profile_name, :user_id)
       end
  end
end