class PowersuppliesController < ApplicationController
  before_action :set_powersupply, only: %i[ show edit update destroy ]

  # GET /powersupplies or /powersupplies.json
  def index
    @powersupplies = Powersupply.all
  end

  # GET /powersupplies/1 or /powersupplies/1.json
  def show
  end

  # GET /powersupplies/new
  def new
    @powersupply = Powersupply.new
  end

  # GET /powersupplies/1/edit
  def edit
  end

  # POST /powersupplies or /powersupplies.json
  def create
    @powersupply = Powersupply.new(powersupply_params)

    respond_to do |format|
      if @powersupply.save
        format.html { redirect_to @powersupply, notice: "Powersupply was successfully created." }
        format.json { render :show, status: :created, location: @powersupply }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @powersupply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /powersupplies/1 or /powersupplies/1.json
  def update
    respond_to do |format|
      if @powersupply.update(powersupply_params)
        format.html { redirect_to @powersupply, notice: "Powersupply was successfully updated." }
        format.json { render :show, status: :ok, location: @powersupply }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @powersupply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /powersupplies/1 or /powersupplies/1.json
  def destroy
    @powersupply.destroy
    respond_to do |format|
      format.html { redirect_to powersupplies_url, notice: "Powersupply was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_powersupply
      @powersupply = Powersupply.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def powersupply_params
      params.require(:powersupply).permit(:name, :description, :price, :produced, :brand_id, :category_id, :country_id, :produced, :power, :pfc, :efficiency)
    end
end
