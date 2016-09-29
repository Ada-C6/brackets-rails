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
  end
end
