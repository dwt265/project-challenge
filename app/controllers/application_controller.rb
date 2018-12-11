class ApplicationController < ActionController::Base
    helper_method :logged_in?
    before_action :require_login

     def logged_in?
        current_user != nil
     end


  def require_login
    unless current_user
      puts action_name
      if request.path != new_user_session_path && 
         request.path != new_user_registration_path &&
         action_name.to_s != "create"
         redirect_to new_user_session_path
      end
    end
  end
end
