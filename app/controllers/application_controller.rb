class ApplicationController < ActionController::Base

      before_action :configure_permitted_parameters, if: :devise_controller?
      protect_from_forgery with: :exception

      protected

      def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up, keys: [:Full_Name, :photo, :email, :Country, :City, :SocialMedia, :About, :PaidMember , :journalist, :datascout, :editor, :admin, :password, :password_confirmation, :remember_me])
          devise_parameter_sanitizer.permit(:sign_in, keys: [:login, :email, :password, :remember_me])
          devise_parameter_sanitizer.permit(:account_update, keys: [:Full_Name, :photo, :email, :Country, :City, :SocialMedia, :About, :PaidMember , :journalist, :datascout, :editor, :admin, :email, :password, :password_confirmation, :current_password])
      end

end