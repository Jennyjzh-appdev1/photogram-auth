class UsersController < ApplicationController
    
    def index
        @users = User.all
        
        render("users/index.html.erb")
    end
    
    def show
        @user = User.find(params.fetch("id_to_display"))
        @userphotos = Photo.where(user_id: @user.id)
        render("users/show.html.erb")
    
    end

end