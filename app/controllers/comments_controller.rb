class CommentsController < ApplicationController

  def create
      @prototype = Prototype.find(params[:prototype_id])
      @comments = @prototype.comments.includes(:user)
      @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to prototype_path(@comment.prototype)
    else 
      render 'prototypes/show'
    end
  end

    # if comment = Comment.create(comment_params)
    #   redirect_to "/prototype/#{comment.prototype.id}" 
    # else
    #   render :show 
    # end


  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

end
