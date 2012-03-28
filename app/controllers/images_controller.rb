class ImagesController < ApplicationController
  def index
    @new_image = Image.last
    @top_images = Image.order("rating DESC").take(5)
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.create(params[:image])
    if @image.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

  def cool
    new_image = Image.last
    new_image.rating += 1
    new_image.save
    cookies.permanent[new_image.id] = true
    redirect_to :action => "index"
  end
end
