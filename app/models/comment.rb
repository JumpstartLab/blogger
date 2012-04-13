class Comment < ActiveRecord::Base
  attr_accessible :author_name, :body

  belongs_to :article
end
