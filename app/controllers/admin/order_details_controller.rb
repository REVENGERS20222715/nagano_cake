class Admin::OrderDetailsController < ApplicationController
  def update
   @order_details = OrderDetail.find(params[:id])
   if @order_details.update
   redirect_to admin_order_path
   else
   render 'show'
   end
  end
end
