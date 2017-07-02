class VendorsController < ApplicationController
  def create
    @vendor = Vendor.create(vendors_params)
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

  def vendors_params
    params.permit(:name)
  end
end
