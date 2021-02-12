class UsersController < ApplicationController
    def index 
        @user = User.all
      end
  
      def show 
        @user = User.find(params[:id])
        @activities = Activity.all
      end
  
      def new 
        @user = User.new
      end
  
      def create 
        @user = User.create(user_params)
        redirect_to ??
      end
  
      def edit 
          @user = User.find(params[:id])
      end
  
      def update 
         @user = User.find(params[:id])
         @user.update(user_params)
         redirect_to ??
      end
  
      def destroy 
        @user = User.find(params[:id])
        @user.destroy
        redirect_to ??
      end
  
      private 
  
      def user_params
          params.permit(:user).permit(:username, :email, :password_digest)
      end
end
