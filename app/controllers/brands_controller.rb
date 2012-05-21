class BrandsController < ApplicationController

	def show
		@brand = Brand.find_by_id(params[:id])
		@products = @brand.products.order('LOWER(name) asc')
	end

	
end