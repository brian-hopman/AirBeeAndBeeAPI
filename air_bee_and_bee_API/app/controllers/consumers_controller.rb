class ConsumersController < ApplicationController
  def create
    @consumer = Consumer.create(consumer_params)
    render json: {
      consumerId:@consumer.id
    }
  end

  def index
    @consumers = Consumer.all
    render json: @consumers
  end

  def show
    @this_consumer = Consumer.find_by(params[:firstName])
    render json: @this_consumer
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def consumer_params
    params.permit(:firstName, :lastName, :email, :vendorAccount)
  end
end
