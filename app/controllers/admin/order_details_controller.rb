class Admin::OrderDetailsController < ApplicationController
  def update
   @order_details = OrderDetail.find(params[:id])
   if @order_details.update(order_detail_params)
    # (params.require(:order_detail).permit(:making_status))
    redirect_to admin_order_path(@order_details.order)
   else
    render 'show'
   end
  end

  private

  def order_detail_params
    params.require(:order_detail).permit(:making_status)
  end


end
