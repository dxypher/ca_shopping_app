class Review < ActiveRecord::Base
  attr_accessible :body, :product_id, :rating, :title, :user_id

  belongs_to :product
  belongs_to :user

  validates :rating, :numericality => { :only_integer => true,
  										:greater_than_or_equal_to => 1,	
  										:less_than_or_equal_to =>5}
end
