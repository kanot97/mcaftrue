class RegistresController < ApplicationController
  before_action :set_registrer, only: [:show, :edit, :update, :destroy]
  before_action :set_appoint, only: [:new, :create, :show]
  def index
    @appoints = Appoint.all
    @registres = Registre.all
  end

  def show
  end

  def new
    @registre = Registre.new
  end

  def create
    @registre = Registre.new(registre_params)
    @registre.user = current_user
    @registre.appoint = @appoint
    if @registre.save
      redirect_to @appoints
    else
      render :new
    end
  end

  def edit
  end

  def update
    @registre.update(registre_params)
    redirect_to @registre
  end

  def destroy
    @registre.destroy
    redirect_to appoints_path
  end

  private

  def registre_params
    params.require(:registre).permit(:user_id, :appoint_id)
  end

  def set_registrer
    @registre = Registre.find(params[:id])
  end

  def set_appoint
    @appoint = Appoint.find(params[:id])
  end
end
