class CoolersController < ApplicationController
  before_action :set_cooler, only: %i[ show edit update destroy ]

  # GET /coolers or /coolers.json
  def index
    @coolers = Cooler.all
  end

  # GET /coolers/1 or /coolers/1.json
  def show
  end

  # GET /coolers/new
  def new
    @cooler = Cooler.new
  end

  # GET /coolers/1/edit
  def edit
  end

  # POST /coolers or /coolers.json
  def create
    @cooler = Cooler.new(cooler_params)

    respond_to do |format|
      if @cooler.save
        format.html { redirect_to @cooler, notice: "Cooler was successfully created." }
        format.json { render :show, status: :created, location: @cooler }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cooler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coolers/1 or /coolers/1.json
  def update
    respond_to do |format|
      if @cooler.update(cooler_params)
        format.html { redirect_to @cooler, notice: "Cooler was successfully updated." }
        format.json { render :show, status: :ok, location: @cooler }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cooler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coolers/1 or /coolers/1.json
  def destroy
    @cooler.destroy
    respond_to do |format|
      format.html { redirect_to coolers_url, notice: "Cooler was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cooler
      @cooler = Cooler.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cooler_params
      params.require(:cooler).permit(:name, :description, :price, :produced, :brand_id, :category_id, :country_id, :cooling_id, :soket)
    end
end
