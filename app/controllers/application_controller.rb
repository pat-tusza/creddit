class ApplicationController < ActionController::Base

    helper_method :current_user, :is_logged_in?
    before_action :authorized


   
    def current_user
       # this method returns <#user > or nil
      @current_user ||= User.find_by(id: session[:user_id])
    end


    
    def is_logged_in?
        # this method returns true or false
        !!current_user
    end

    
    def authorized
        unless is_logged_in?
            # flash[:errors] = ["You aren't logged in"]
            redirect_to login_path 
        end
    end

    def logout_user
        session[:user_id] = nil
    end
end
