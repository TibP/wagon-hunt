class ProductsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category]
      @products=Product.where(category: params[:category])
    else
      @products=Product.all
    end

  end

  def show
    # index=params[:id].to_i
    # @product=Product.find(index)
    # ds la method fin_product -> @product=Product.find(params[:id])
  end

  def new
    @product=Product.new
  end

  def create
    @product=Product.new(product_params)
    if @product.save #si le pdt est validé i.e bien enregistré
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
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end


  def product_params
    params.require(:product).permit(:name, :url, :tagline, :category)
  end

  def find_product
     @product=Product.find(params[:id])
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
