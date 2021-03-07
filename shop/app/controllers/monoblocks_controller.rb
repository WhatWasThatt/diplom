class MonoblocksController < ApplicationController
  before_action :set_monoblock, only: %i[ show edit update destroy ]

  # GET /monoblocks or /monoblocks.json
  def index
    @monoblocks = Monoblock.all
  end

  # GET /monoblocks/1 or /monoblocks/1.json
  def show
  end

  # GET /monoblocks/new
  def new
    @monoblock = Monoblock.new
  end

  # GET /monoblocks/1/edit
  def edit
  end

  # POST /monoblocks or /monoblocks.json
  def create
    @monoblock = Monoblock.new(monoblock_params)

    respond_to do |format|
      if @monoblock.save
        format.html { redirect_to @monoblock, notice: "Monoblock was successfully created." }
        format.json { render :show, status: :created, location: @monoblock }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @monoblock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monoblocks/1 or /monoblocks/1.json
  def update
    respond_to do |format|
      if @monoblock.update(monoblock_params)
        format.html { redirect_to @monoblock, notice: "Monoblock was successfully updated." }
        format.json { render :show, status: :ok, location: @monoblock }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @monoblock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monoblocks/1 or /monoblocks/1.json
  def destroy
    @monoblock.destroy
    respond_to do |format|
      format.html { redirect_to monoblocks_url, notice: "Monoblock was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monoblock
      @monoblock = Monoblock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def monoblock_params
      params.require(:monoblock).permit(:name, :description, :brand_id, :category_id, :country_id, :color_id, :os_id, :price, :diagonal, :produced, :resolution)
    end
end
