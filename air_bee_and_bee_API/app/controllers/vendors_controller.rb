class VendorsController < ApplicationController
  def create
    @vendor = Vendor.create(vendors_params)
    render json: {
      vendorId:@vendor.id
    }
  end

  def index
    @vendors = Vendor.all
    render json: @vendors
  end

  def show
    @this_vendor = Vendor.find(params['id'])
    render json: @this_vendor
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def vendors_params
    params.permit(:name, :apiary_image)
  end
end
