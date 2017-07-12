class TransactionsController < ApplicationController
  def create
    @transaction = Transaction.Create(transactions_params)
    render json: @transaction
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

  def transactions_params
    params.permit(:total, :consumer_id, :vendor_id, :product_id)
  end
end
