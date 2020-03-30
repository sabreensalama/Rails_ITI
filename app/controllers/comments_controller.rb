class CommentsController < ApplicationController

  def index
    @comment=Comment.all
  end


  def new
    
  end

  def  create
    #validatate data
    # store data
    # @post=Post.new
    # @post.title=params[:title]
    # @post.text=params[:text]
    @comment=Commit.create(:content)
    @comment.save()
    redirect_to :comments
  end

  def edit
    @post=Comment.find(params[:id])

  end

  def  update
    @post=Comment.find(params[:id])
    @post.update(post_param)
    redirect_to action:  :index
  
  end

  def destroy
    @post=Comment.find(params[:id])
    @post.destroy
    redirect_to  :posts


  end


  def show
  
  end
  
end
