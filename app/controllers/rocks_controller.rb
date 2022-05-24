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
      redirect_to rock_path(@rock)
    else
      render :new
    end
  end

  def show
    @rock = Rock.find(params[:id])
    @request = Request.new
  end

  def update
    @rock = Rock.find(params[:id])
    @rock.update(rock_params)
    redirect_to rock_path(@rock)
  end


  def destroy
    @rock = Rock.find(params[:id])
    @rock.delete
    redirect_to  rock_path(@rock)
  end

  private

  def rock_params
    params.require(:rock).permit(:name, :description, :color, :price, :user_id)
  end
end
