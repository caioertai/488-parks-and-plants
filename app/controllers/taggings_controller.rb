class TaggingsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @tagging = Tagging.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @tagging = Tagging.new(tagging_params)
    @tagging.plant = @plant

    if @tagging.save
      redirect_to garden_path(@plant.garden)
    else
      render :new
    end
  end

  private

  def tagging_params
    params.require(:tagging).permit(:tag_id)
  end
end
