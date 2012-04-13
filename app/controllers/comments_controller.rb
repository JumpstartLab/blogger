class CommentsController < ApplicationController
  def create
    article_id = params[:comment].delete(:article_id)

    @comment = Comment.new(params[:comment])
    @comment.article_id = article_id

    @comment.save

    redirect_to article_path(@comment.article)
  end
end
