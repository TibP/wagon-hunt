class ProductsController < ApplicationController


  def index
    @products=Product.all
  end

  def show
    index=params[:id].to_i
    @product=Product.find(index)
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def desroy

  end

#-------------------------------
 # Avec recupération d'un tableua en dur
  # PRODUCTS=[
  #           {name: "Kudoz" , category: "pro"},
  #           {name: "uSlide" , category: "education"},
  #           {name: "Hubum" , category: "lifestyle"},
  #           {name: "Roadstr" , category: "lifestyle"}
  #         ]
  # def index
  #   if params[:filters]
  #     @products=PRODUCTS.select {|product| product[:category]==params[:filters]}
  #   else
  #     @products=PRODUCTS
  #   end
  # end
end
