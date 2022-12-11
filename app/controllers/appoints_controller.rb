class AppointsController < ApplicationController
  before_action :set_appoint, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]

  def index
    @appoints = Appoint.all
  end

  def show
  end

  def new
    @appoint = Appoint.new
  end

  def create
    @appoint = Appoint.new(appoint_params)
    if @appoint.save
      redirect_to appoints_index_path(@appoint)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @appoint.destroy
    redirect_to appoints_path
  end

  def edit
  end

  def update
    if @appoint.update(appoint_params)
      redirect_to @appoint
    else
      render :edit
    end
  end

  private

  def appoint_params
    params.require(:appoint).permit(:title, :description, :start_at)
  end

  def set_appoint
    @appoint = Appoint.find(params[:id])
  end
end
