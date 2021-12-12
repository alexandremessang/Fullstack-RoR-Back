class Api::V1::EquipementsController < ApplicationController
  before_action :set_equipement, only: [:show, :update, :destroy]

  # GET /api/v1/equipements
  def index
    @equipements = Equipement.all
    render json: @equipements
  end

  # GET /api/v1/equipements/1
  def show
    render json: @equipement
  end

  # POST /api/v1/equipements
  def create
    @equipement = Equipement.new(equipement_params)

    if @equipement.save
      render json: @equipement, status: :created
    else
      render json: @equipement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/equipements/1
  def update
    if @equipement.update(equipement_params)
      render json: @equipement
    else
      render json: @equipement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/equipements/1
  def destroy
    @equipement.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipement
      @equipement = Equipement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def equipement_params
      params.require(:equipement).permit(:name, :equipement_categorie_id)
    end
end
