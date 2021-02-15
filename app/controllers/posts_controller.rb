class PostsController < ApplicationController
    def index 
        @posts = Posts.all
      end
  
      def show 
        @post = Post.find(params[:id])
        @user = session[:user_id]
      end
  
      def new 
        @post = Post.new
        @activity = Activity.all
        @user = session[:user_id]
      end
  
      def create 
        @post = Post.create(post_params)

        redirect_to post_path(@post.id)
      end
  
      def edit 
          @post = Post.find(params[:id])
      end
  
      def update 
         @post = Post.find(params[:id])
         @post.update(post_params)
         redirect_to ??
      end
  
      def destroy 
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to ??
      end
  
      private 
  
      def post_params
        params.require(:post).permit(:title, :body, :user_id, :activity_id )
      end
end
