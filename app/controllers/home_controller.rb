class HomeController < ApplicationController
  def index
    if params[:search]
      @items = Item.search(params[:search]).order('created_at DESC').paginate(page: params[:page], per_page: 16)
    else
      @items = Item.limit(2).order("RANDOM()")

    end

  end
end
