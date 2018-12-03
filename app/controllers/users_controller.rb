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


    def show_likes
        
        @user = User.find(current_user.id)
        @userlikes = Like.where(user_id: current_user.id)
        
        render("users/my_likes.html.erb")
    
    end
    
    
end