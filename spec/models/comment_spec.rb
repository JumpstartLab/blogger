require 'spec_helper'

describe Comment do
  before(:each) do
    @article = Article.create(:title => "Sample title",
                    :body => "Sample body")
    @comment = @article.comments.new(:body => "This article rules!",
                                     :author_name => "Daffy Duck")
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

  it "must have an article_id that matches an existing article" do
    @comment.article_id = -1
    @comment.should_not be_valid
  end
end
