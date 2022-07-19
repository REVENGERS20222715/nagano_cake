class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.admin_id = current_admin.id
    if @item.save
      redirect_to admin_item_path(@item)
    else 
      @items = Item.all
      redirect_to 'new_admin_item_path', notice: "大変申し訳ありませんが記入漏れがあります"
    end  
  end


  def index
    @item = Item.new
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    
  end

  def edit
    @item = Item.find(params[:id])
  end
  
  def update
    if @item.update(item_params)
      redirect_to public_item_path(@item)
    else
      render 'edit'
    end  
  end

end
