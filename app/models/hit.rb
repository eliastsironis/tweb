class Hit < ActiveRecord::Base
  attr_accessible :hit_id, :body, :subject, :user_id, :category_id, :image, :bidmax, :bidmin, :prefecture_id
  validates :subject, :presence => true, :length => { :maximum => 50 }
  validates :body, :presence => true, :length => { :maximum => 200 }
  validates :category_id, :presence => true
     paginates_per 15
has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },:default_url => "/:class/:attachment/missing_:style.jpeg"
belongs_to :user
belongs_to :category
belongs_to :prefecture
has_many :bids  ,:dependent => :destroy

end
