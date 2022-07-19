class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
  end
  
  def confirm
  end

  def complete
  end
  
  def create
    @order = Order.find(params[:id])
    @order.customer_id = current_customer.id
    @order.save
    render 'orders/confirm'
  end

  def index
  end

  def show
  end
end
