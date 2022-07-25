class Admin::OrderDetailsController < ApplicationController
  def update
  # @order = Order.find(params[:id])
   @order_details = Order_detail.find(params[:id])
   if @order_details.update(order_params)
   redirect_to admin_order_path(@order)
   else
   render 'show'
   end
  end
end
