class ActivitiesController < ApplicationController
    def index 
      @activities = Activity.all
    end

    def show 
      @activity = Activity.find(params[:id])
    end

    def new 
      @activity = Activity.new
    end

    def create 
      @activity = Activity.create(activity_params)
      redirect_to ??
    end

    def edit 
        @activity = Activity.find(params[:id])
    end

    def update 
       @activity = Activity.find(params[:id])
       @activity.update(activity_params)
       redirect_to ??
    end

    def destroy 
      @activity = Activity.find(params[:id])
      @activity.destroy
      redirect_to ??
    end

    private 

    def activity_params
        params.permit(:activity).permit(:name)
    end
end
