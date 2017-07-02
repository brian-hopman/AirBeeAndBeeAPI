class ProductsController < ApplicationController
  def create
    @product = Product.new
    @product.consumer_id = @consumer.id
    @product.vendor_id = @vendor.id
    @product.save
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
    params.permit(:title, consumer_id: @consumer)
  end
end
