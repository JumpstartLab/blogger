class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.search(params)
  end

  def new
    @article = Article.new
  end

  def create
    a = Article.new(params[:article])
    a.save
    flash[:notice] = "#{a} was created."
    redirect_to articles_path
  end

  def edit
    @article = Article.find params[:id]
  end

  def update
    article = Article.find params[:id]
    article.update_attributes(params[:article])
    flash[:notice] = "#{article} was updated."
    redirect_to article_path(article)
  end

  def destroy
    article = Article.find params[:id]
    article.destroy
    flash[:notice] = "#{article} was destroyed."
    redirect_to articles_path
  end
end
