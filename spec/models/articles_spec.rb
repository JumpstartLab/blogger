require 'spec_helper'

describe Article do
  before(:each) do
    @article = Article.new(:title => "Hello, World", 
                           :body => "Sample Body.")
  end

  it "is not valid without a title" do
    @article.title = nil
    @article.should_not be_valid
  end

  it "is not valid without a body" do
    @article.body = nil
    @article.should_not be_valid
  end

  it "must have a unique title" do
    @article.save
    second = @article.clone
    second.should_not be_valid
  end

  it "should return the title when converted to a string" do
    @article.to_s.should == @article.title
  end

  it "should respond to comments" do
    @article.should respond_to(:comments)
  end

  it "should respond to .valid_ids with a set of all current article IDs" do
    Article.valid_ids.should == Article.select(:id).collect{|a| a.id}
  end
end
