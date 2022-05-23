class RocksController < ApplicationController
  def index
    @rocks.all
  end

  def new
    @rock = Rock.new
  end

  def create
    @rock = Rock.new(rock_params)
    if @rock.save
      # redirect_to .....
    else
      # render :new
    end
  end

  private
  def rock_params
    params.require(:rock).permit(:name, :description, :color, :price, :user_id,)
  end
end
