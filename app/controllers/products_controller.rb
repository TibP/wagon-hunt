class ProductsController < ApplicationController


  def index
    @products=Product.all
  end

  def show
    index=params[:id].to_i
    @product=Product.find(index)
  end

  def new
    @product=Product.new
  end

  def create
    @product=Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      #retourne sur la page de formulaire
      #avec @product pré rempli + msg d'erreur
      render :new
    end
  end

  def edit

  end

  def update

  end

  def desroy

  end


  def product_params
    params.require(:product).permit(:name, :url)
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
