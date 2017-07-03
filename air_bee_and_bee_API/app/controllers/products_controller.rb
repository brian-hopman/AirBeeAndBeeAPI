class ProductsController < ApplicationController
  def create
    @product = Product.create(products_params)
    render json: {
      productId:@product.id
    }
  end

  def index
    @products = Product.all
    render json: @products
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def products_params
    params.permit(:title, :consumer_id, :vendor_id)
  end
end
