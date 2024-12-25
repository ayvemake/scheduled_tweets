class RegistrationsController < ApplicationController
    def new 
        @user = User.new
    end

    def create
        # Add your create logic here
    end
end 