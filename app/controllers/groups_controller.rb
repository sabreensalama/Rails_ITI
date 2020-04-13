class GroupsController < ApplicationController
    def  index
    

    end
    
    def  create
        #validatate data
        # store data
        # @post=Post.new
        # @post.title=params[:title]
        # @post.text=params[:text]
        @group=Group.new
        # @group.user_id=1
        @group.name=params[:name]
        @group.save()
        redirect_to action:  :index
      end
end
