class Admin::GenresController < ApplicationController

  def new
  @item = current_customer.items.build
  @genres = Genre.all
  end

  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(book_params)
    if
      @genre.save
      redirect_to admin_genres_path
    else
      render 'index'
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end
end
