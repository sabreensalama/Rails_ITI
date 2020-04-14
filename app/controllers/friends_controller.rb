class FriendsController < ApplicationController

   def index

  end
   

   def search  
    if params[:search].blank?  
      redirect_to( "/", alert: "Empty field!") and return
    else  
      @parameter = params[:search] 
      # @users = User.where(" email LIKE :search", search: @parameter).first(1)
      @user = User.where(" email LIKE :search", search: @parameter).first

      
      userid=1
      @friend=Friend.new
      @friend.id=@user.id
      @friend.user_id=userid
      @friend.status="true"
      @friend.save()
    
    end 
  end
 



end
