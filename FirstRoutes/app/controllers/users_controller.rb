class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def create
        user = User.new(user_params)
        
        if user.save 
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        @user = User.find user_params[:id]
        @user.destroy 
        redirect_to users_url
    end

    def show
        @user = User.find user_params[:id]
        render json: @user
        
    end

    private
    def user_params
        params.require(:user).permit(:username, :id)
    end

    # def index
    #     @users = User.all
    #     render json: @users
    # end

    

    # def show
    #     @user = User.find params[:id]
    #     render json: @user
    #     # if @user
    #     #     render json: @user
    #     # else
    #     #     render json: @user.errors.full_messages, status: :not_found
    #     # end
    # end

    # def update
    #     @user = User.find params[:id]
    #     if @user.update(user_params)
    #         redirect_to user_url(@user)
    #     else
    #         render json: @user.errors.full_messages, status: 422
    #     end
    # end

    

    # private
    # def user_params
    #     x = params.require(:user).permit(:body, :id)
    #     p 'asdfhbasdlkjfbalkj'
    #     return x
    # end
end