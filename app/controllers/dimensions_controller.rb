class DimensionsController < ApplicationController
  before_action :set_dimension, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @dimensions = Dimension.all
    respond_with(@dimensions)
  end

  def show
    respond_with(@dimension)
  end

  def new
    @dimension = Dimension.new
    respond_with(@dimension)
  end

  def edit
  end

  def create
    @dimension = Dimension.new(dimension_params)
    @dimension.save
    respond_with(@dimension)
  end

  def update
    @dimension.update(dimension_params)
    respond_with(@dimension)
  end

  def destroy
    @dimension.destroy
    respond_with(@dimension)
  end

  private
    def set_dimension
      @dimension = Dimension.find(params[:id])
    end

    def dimension_params
      params.require(:dimension).permit(:length, :width, :thickness, :board_id, :volume)
    end
end
