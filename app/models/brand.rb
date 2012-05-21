class Brand < ActiveRecord::Base
  attr_accessible :logo, :name

  has_many :products
  has_many :reviews, :through => :products
end
