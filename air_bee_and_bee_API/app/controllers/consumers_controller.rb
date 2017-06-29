class ConsumersController < ApplicationController
  def create
    Consumer.create(consumer_params)
  end

  def index
    consumers = Consumer.all
    render json: consumers
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def consumer_params
    params.permit(:username)
  end
end
