class Public::CustomersController < ApplicationController
  def show
    # @customer = Customer.find(params[:id])
    @customers = Customer.all
  end

  def edit
  end

  def unsubscribe
  end

  def withdraw
      @customer = current_customer


      @customer.update(is_customer_status: true)
      # ログアウトさせる
      reset_session

      flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
      redirect_to root_path
  end

    private
        def customer_params
            params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :postal_code, :address, :phone_number, :is_customer_status)
        end
end
