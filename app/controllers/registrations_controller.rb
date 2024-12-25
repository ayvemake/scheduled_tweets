class RegistrationsController < ApplicationController
    def new 
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:email, :password, :password_confirmation))
        if @user.save
            redirect_to root_path, notice: "Account created successfully"
        else
            flash[:alert] = "Something went wrong"
            render :new, status: :unprocessable_entity #add this for compatibility with rails 7
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end 


end 
