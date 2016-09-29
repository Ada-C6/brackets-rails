class SoilSamplesController < ApplicationController
  def index
    @samples = SoilSample.all
  end

  def show
    @sample = SoilSample.find(params[:id])
  end

  def new
  end

  def create
    @sample = SoilSample.new
    @sample.location = params[:location]
    @sample.scientist = params[:scientist]
    if @sample.save
      # SAVED SUCCESSFULLY
      redirect_to soil_samples_path
    else
      # DID NOT SAVE
      render :new
    end
  end
end
