class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :article

  #validates :article_id, :uniqueness => {:scope => :tag_id}
  validates_uniqueness_of :article_id, :scope => :tag_id
end
