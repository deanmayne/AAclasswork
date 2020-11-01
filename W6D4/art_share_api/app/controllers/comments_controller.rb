class CommentsController < ApplicationController
  def index
    if params[:artwork_id]
        comments = Comment.find_by(artwork_id: params[:artwork_id])
    end

    if params[:user_id]
        comments = Comment.find_by(user_id: params[:user_id])
    end

    render json: comments
  end

  def create
    comment = Comment.new(new_params)
    if comment.save
        render json: comment
    else
        render json: comment.errors.full_messages, status: 422
    end
  end

  def destroy
    comment = Comment.find_by(id: params[:id])
    comment.destroy
        render json: comment
  end

  private
  def new_params
    params.require(:comment).permit(:user_id, :artwork_id, :body)
  end

end
