class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])

  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create
      @product.name = params[:product][:name]
      @product.description = params[:product][:description]
      @product.price = params[:product][:price]
        if @product.save
          redirect_to products_path
        else
          render :new
      end
  end

  def edit
  end



end
