class FriendsController < ApplicationController

   def index
    if params[:search]
      redirect_to( search_page_path	, alert: "Empty field!") 
    else  
      @parameter = params[:search]
      @user = User.all.where("email LIKE :search", search: @parameter)  
    end  
    # if params[:search]
    #   @user =User.search_by(params[:search]) 
    #   render search_page_path , @user
    # end 
  end
   

  def search  

  end
 



end
