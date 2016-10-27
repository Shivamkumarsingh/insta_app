class PostsController < ApplicationController
  def new
  	@post=Post.new
  end

  def index
  	@posts=Post.all
  end

  def show
  	@post=Post.find(params[:id])
  end
  def create
  	@post=Post.new(permit_post)
  	if @post.save
  		flash[:success] = "success!"
  		redirect_to @post
  	else
  		flash[:error] = @post.errors.full_messages
  		render 'new'
  end
end
  private 

   def permit_post
  	params.require(:post).permit(:image,:description)
   end
end
