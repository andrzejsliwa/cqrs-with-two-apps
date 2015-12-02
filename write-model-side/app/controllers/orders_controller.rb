class OrdersController < ApplicationController
  include CommandHandlers

  def add_item
    cmd = Domain::Commands::AddItemToBasket.new(product_params)
    execute(cmd)
    head :ok
  end

  def remove_item
    cmd = Domain::Commands::RemoveItemFromBasket.new(product_params)
    execute(cmd)
    head :ok
  end

  def create
    cmd = Domain::Commands::CreateOrder.new(order_params)
    execute(cmd)
    redirect_to Order.find_by_uid(cmd.order_id), notice: 'Order was successfully created.'
  end

  private

  def product_params
    args = params.permit(:id, :product_id)
    {order_id: args[:id], product_id: args[:product_id]}
  end

  def order_params
    params.permit(:order_id, :customer_id)
  end
end
