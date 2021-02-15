class FavoritesController < ApplicationController
    def index 
        @favorites = Favorite.all
      end
  
      def show 
        @favorite = Favorite.find(params[:id])
      end
  
      def new 
        @favorite = Favorite.new
      end
  
      def create 
        @favorite = Favorite.create(favorite_params)
        redirect_to user_path(@favorite.user.id)
      end
  
      def edit 
          @favorite = Favorite.find(params[:id])
      end
  
      def update 
         @favorite = Favorite.find(params[:id])
         @favorite.update(favorite_params)
         redirect_to ??
      end
  
      def destroy 
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
        redirect_to ??
      end
  
      private 
  
      def favorite_params
          params.permit(:user_id, :activity_id)
      end
end
# .require(:favorite)