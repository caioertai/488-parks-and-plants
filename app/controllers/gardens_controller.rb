class GardensController < ApplicationController
  def index
    @gardens = Garden.all
  end

  # GET /gardens/:id
  # GET /gardens/6
  def show
    @garden = Garden.find(params[:id])
  end
end
