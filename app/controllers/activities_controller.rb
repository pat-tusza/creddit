class ActivitiesController < ApplicationController
    def index 
      @activities = Activity.all
    end

    def show 
      @activity = Activity.find(params[:id])
      @user = session[:user_id]
    end



    

end
