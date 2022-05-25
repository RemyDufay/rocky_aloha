class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def create
    @request = Request.new(request_params)
    @rock = Rock.find(params[:rock_id])
    @user = current_user
    @request.rock = @rock
    @request.user = @user
    @request.save!
    redirect_to request_path(@request)

  end



  def show
    # @rock = Rock.find(params[:id])
    @request = Request.find(params[:id])
  end


  private

  def request_params
    params.require(:request).permit(:date, :end_date)
  end
end
