class PicsController < ApplicationController
  def index
    @pics = Pic.all
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
end
