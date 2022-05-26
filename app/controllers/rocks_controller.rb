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
    @markers = [{
        lat: @user.latitude,
        lng: @user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: @user }),
        image_url: helpers.asset_url("moai-icon-red.png")
      }]
      @request = Request.new
  end

  def update
    @rock = Rock.find(params[:id])
    @rock.update(rock_params)
    redirect_to rock_path(@rock)
  end

  def destroy
    @rock = Rock.find(params[:id])
    @rock.requests.delete_all
    @rock.delete
    redirect_to dashboard_path
  end

  private

  def rock_params
    params.require(:rock).permit(:name, :description, :shape, :color, :price, :user_id, :photo)
  end
end
