require 'spec_helper'

describe Comment do
  before(:each) do
    @article = Fabricate(:article_with_comments)                                 
    @comment = @article.comments.first
  end

  it "should be valid with valid attributes" do
    @article.should be_valid
    @comment.should be_valid
  end

  it "should respond to article" do
    @comment.should respond_to(:article)
  end

  it "must have a value in article_id" do
    @comment.article_id = nil
    @comment.should_not be_valid
  end

end
