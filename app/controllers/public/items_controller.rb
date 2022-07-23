class Public::ItemsController < ApplicationController

  def index
    #presentメソッドはデータが入ってるかどうかを識別するメソッド
    if (params[:genre_id]).present?
      @items = Item.where(genre_id: params[:genre_id])
      #モデル.where(カラム名: params[:受け取る名前＊カラム名だとわかりやすい])
      #whereメソッドは指定した条件に当てはまるデータを全て取得してくれる
    else
      @items = Item.all
    end


    if (params[:genre_name]).present?
      @item_name = params[:genre_name]
    else
      @item_name = "商品"
    end

    @genres = Genre.all

  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

end