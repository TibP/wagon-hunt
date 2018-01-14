class UpvotesController < ApplicationController

  def create
    #binding.pry
    product = Product.find(params[:product_id])
    product.upvotes.create! user: current_user
    redirect_to products_path
  end
end
