class Public::AddressesController < ApplicationController
    before_action :authenticate_customer!

  def index
    @addresses = current_customer.addresses.all
    @address = Address.new
    @genres = Genre.all
  end

  def create
    @address = Address.new(address_params)
    @address.customer_id = current_customer.id
    if @address.save
      redirect_to public_addresses_path
    else
      @addresses = current_customer.addresses.all
      render "index"
    end
  end

  def edit
    @address = Address.find(params[:id])
    @genres = Genre.all
  end

  def update
    @address = Address.find(params[:id])
    if @address.update(address_params)
      redirect_to public_addresses_path
    else
      render "edit"
    end
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to public_addresses_path
  end

  private

  def address_params
    params.require(:address).permit(:name,:post_code,:address, :last_name, :first_name_kana, :last_name_kana, :postal_code, :address, :telephone_number)
  end

end
