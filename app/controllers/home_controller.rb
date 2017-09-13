class HomeController < ApplicationController
  def index
      @items = Item.limit(4).order("RANDOM()")
  end
end
