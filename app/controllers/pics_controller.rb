class PicsController < ApplicationController
  def index
    @new_pic = Pic.last
    @top_pics = Pic.order("rating DESC").take(5)
  end

  def new
    @pic = Pic.new
  end

  def create
    @pic = Pic.create(params[:pic])
    if @pic.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

  def cool
    new_pic = Pic.last
    new_pic.rating += 1
    new_pic.save
    redirect_to :action => "index"
  end
end
