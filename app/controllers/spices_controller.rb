class SpicesController < ApplicationController

  before_action :find_spice, only: [:update, :destroy]

  def index
    spices = Spice.all
    render json: spices
  end  

  def create
    spice = Spice.create(spice_params)
    render json: spice, status: :created
  end  

  def update 
    # spice = Spice.find(params[:id])
    # spice = find_spice
    @spice.update(spice_params)
    render json: @spice
  end  

  def destroy
    @spice.destroy
    render json: "Spice Destroyed!"
  end  


  private

  def find_spice
    @spice = Spice.find(params[:id])
  end  

  def spice_params
    spice = params.permit(:title, :image, :description, :notes, :rating)
  end  
  
end

