class HomeController < ApplicationController
  def index
      @items = Item.limit(8).order("RANDOM()")
  end
end
