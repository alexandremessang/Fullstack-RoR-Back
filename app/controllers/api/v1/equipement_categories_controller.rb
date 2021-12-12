class Api::V1::EquipementCategoriesController < ApplicationController
  before_action :set_equipement_category, only: [:show, :update, :destroy]

  # GET /api/v1/equipement_categories
  def index
    @api_v1_equipement_categories = EquipementCategorie.all

    render json: @api_v1_equipement_categories
  end

  # GET /api/v1/equipement_categories/1
  def show
    render json: @equipement_category
  end

  # POST /api/v1/equipement_categories
  def create
    #byebug
    @equipement_category = EquipementCategorie.new(equipement_category_params)

    if @equipement_category.save
      render json: @equipement_category, status: :created
    else
      render json: @equipement_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/equipement_categories/1
  def update
    if @equipement_category.update(equipement_category_params)
      render json: @equipement_category
    else
      render json: @equipement_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/equipement_categories/1
  def destroy
    @equipement_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipement_category
      @equipement_category = EquipementCategorie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def equipement_category_params
      params.require(:equipement_category).permit(:name)
    end
end
