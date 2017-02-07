class PagesController < ApplicationController
  def index
    @products = Product.all
  end

  def about
  end

  def donate
    @products = Product.all
  end
end
