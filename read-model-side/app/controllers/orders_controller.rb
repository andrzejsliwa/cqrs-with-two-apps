class OrdersController < ApplicationController
  include CommandHandlers

  def index
    @orders = Order.all
  end

  def show
    @order       = Order.find(params[:id])
    @order_lines = OrderLine.where(order_uid: @order.uid)
  end

  def new
    @order_id  = SecureRandom.uuid
    @products  = Product.all
    @customers = Customer.all
  end
end
