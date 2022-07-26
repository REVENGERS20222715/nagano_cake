class Public::HomesController < ApplicationController
  def top
    @slide_items = Item.order("RANDOM()").limit(5)
    @genres = Genre.all
    # @items = Item.all
    @items = Item.all.page(params[:page]).per(4)
  end

  def index
　　@itemss = Item.all.page(params[:page]).per(4)
  end

  def about
  end
end
