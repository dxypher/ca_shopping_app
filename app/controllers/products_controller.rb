class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def show
		@product = Product.find_by_id(params[:id])
	end

	def new
		
	end
	
	def create
		@product = Product.new(params[:product])
	end
end