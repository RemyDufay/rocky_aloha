class RocksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @rocks = Rock.all

  end

  def new
    @rock = Rock.new
  end

  def create
    @rock = Rock.new(rock_params)
    @rock.user = current_user
    if @rock.save
      redirect_to rock_path(@rock)
    else
      render :new
    end
  end

  def show
    @rock = Rock.find(params[:id])
    @user = @rock.user
    @user.geocode
    @markers = @rock.map do |rock|
      [{
        lat: @user.latitude,
        lng: @user.longitude
        # info_window: render_to_string(partial: "info_window", locals: { rock: rock }),
        # image_url: helpers.asset_url("moai-icon-red")
      }]
    end
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
    params.require(:rock).permit(:name, :description, :shape, :color, :price, :user_id, :photo)
  end
end
