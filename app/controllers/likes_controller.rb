class LikesController < ApplicationController
	def create
	  @post = Post.where(id: params[:post_to_be_liked])    
    @like = @post.likes.build(:post_id => @post.id)
    if @like.save
      respond_to do |format|
        format.html {redirect_to :back, notice: "Liked!"}
        format.js
      end
    end
	end
	def destroy
	end
	private 

  
end
