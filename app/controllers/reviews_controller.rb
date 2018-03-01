class ReviewsController < ApplicationController
  def new
  end

  def show
    
  end

  def index
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      @product = Product.find(params[:product_id])
      redirect_to product_path(@product)
    end
  end

  def create
    @review = Review.create
    @review.product_id = params[:product_id]

    @review.body = params[:review][:body]
      if @review.save
        @product = Product.find(params[:product_id])
        redirect_to product_path(@product)

      end
  end

  def update

  end


end
