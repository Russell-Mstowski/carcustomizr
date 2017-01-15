class CommentsController < ApplicationController
  def create
    @comment = Comment.new(
      comment: params[:comment],
      customization_id: params[:customization_id],
      user_id: current_user.id
      )

    @comment.save
    redirect_to "/customizations/#{params[:customization_id]}"
  end
end
