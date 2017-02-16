class PagesController < ApplicationController
  def index
    @gallery_images = GalleryImage.all
    @products = Product.all
  end

  def about
  end
end
