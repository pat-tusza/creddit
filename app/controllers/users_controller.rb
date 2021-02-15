class UsersController < ApplicationController
  skip_before_action :authorized, only: [:login, :handle_login, :new, :create]

  def login

  end

  def handle_login
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:errors] = ["Incorrect Username or Password"]
            redirect_to login_path
        end
  end

  def logout
    logout_user
    redirect_to login_path
  end

  
      
      def index 
        @user = User.all
      end
  
      def show 
        @user = User.find(params[:id])
        @activities = Activity.all
        
        # unless current_user == @user.id
        #   redirect_to user_path(current_user.id)
        # end

      end
  
      def new 
        @user = User.new
      end
  
      def create 
        @user = User.create(user_params)
        if @user.valid?
          session[:user_id] = @user.id
          redirect_to user_path(@user)
        else
          flash[:errors] = @user.errors.full_messages
          # flash[:attributes] = @user.attributes
          redirect_to new_user_path
        end
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
          params.require(:user).permit(:username, :email, :password)
      end
end
