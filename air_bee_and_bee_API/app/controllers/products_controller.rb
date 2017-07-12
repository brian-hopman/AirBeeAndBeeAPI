class ProductsController < ApplicationController
  def create

    @product = Product.create(products_params)
    render json: @product
  end

  def index
    @products = Product.all
    render json: @products
  end

  def search
    @terms = Product.where('tag like ? OR tag2 like ? OR tag3 like ?', params['search_term'].capitalize, params['search_term'].capitalize, params['search_term'].capitalize)
    render json: @terms
  end

  def show
    id = params['id']
    @this_product = Product.where("vendor_id = ?", id)
    render json: @this_product
  end


  def edit
  end

  def update
  end

  def destroy
  end

  private

  def products_params
    params.permit(:title, :product_image, :price, :tag, :tag2, :tag3, :search_term, :consumer_id, :vendor_id)
  end
end
