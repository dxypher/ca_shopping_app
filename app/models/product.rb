class Product < ActiveRecord::Base
  attr_accessible :name, :price, :brand_id

  belongs_to :brand
  has_many :reviews
end
