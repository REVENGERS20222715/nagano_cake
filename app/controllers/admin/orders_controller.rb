class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @customer = @order.admin
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    @order_details = @order.order_details

    if @order.status == "入金確認"
      @order_details.each do |order_detail|
        order_detail.make_status = "製作待ち"
        order_detail.save
      end
    end
    redirect_to admin_order_path
  end

end
