class SoilSamplesController < ApplicationController
  def index
    @samples = SoilSample.all
  end

  def show
    @sample = SoilSample.find(params[:id])
  end

  def edit # >> LIKE NEW
    @sample = SoilSample.find(params[:id])
  end

  def update # >> LIKE CREATE
    @sample = SoilSample.find(params[:id])
    if @sample.update(soil_params)
      # SUCCESS
      redirect_to soil_samples_path
    else
      # NOPE, NO SUCCESS
      render :edit
    end
  end

  def new
    @sample = SoilSample.new
  end

  def create
    @sample = SoilSample.new(soil_params)
    # @sample.location = params[:soil_sample][:location]
    # @sample.scientist = params[:soil_sample][:scientist]
    if @sample.save
      # SAVED SUCCESSFULLY
      redirect_to soil_samples_path
    else
      # DID NOT SAVE
      render :new
    end
  end

  private

  def soil_params
    params.require(:soil_sample).permit(:this_is_bad, :location, :scientist, :is_wet)
  end












end
