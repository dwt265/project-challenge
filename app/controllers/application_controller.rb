class ApplicationController < ActionController::Base
    helper_method :logged_in?
    before_action :require_login

     def logged_in?
        current_user != nil
     end


  def require_login
    unless current_user
      # Allow user to sign in, sign up, create user or forget password. Otherwise redirect to sign in.
      if request.path != new_user_session_path && 
         request.path != new_user_registration_path &&
         action_name.to_s != "create" &&
         controller_name.to_s != "passwords" 
         redirect_to new_user_session_path
      end
    end
  end
end
