class ConsumersController < ApplicationController
  def create
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
end
