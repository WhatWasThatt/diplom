class HarddisksController < ApplicationController
  before_action :set_harddisk, only: %i[ show edit update destroy ]

  # GET /harddisks or /harddisks.json
  def index
    @harddisks = Harddisk.all
  end

  # GET /harddisks/1 or /harddisks/1.json
  def show
  end

  # GET /harddisks/new
  def new
    @harddisk = Harddisk.new
  end

  # GET /harddisks/1/edit
  def edit
  end

  # POST /harddisks or /harddisks.json
  def create
    @harddisk = Harddisk.new(harddisk_params)

    respond_to do |format|
      if @harddisk.save
        format.html { redirect_to @harddisk, notice: "Harddisk was successfully created." }
        format.json { render :show, status: :created, location: @harddisk }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @harddisk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /harddisks/1 or /harddisks/1.json
  def update
    respond_to do |format|
      if @harddisk.update(harddisk_params)
        format.html { redirect_to @harddisk, notice: "Harddisk was successfully updated." }
        format.json { render :show, status: :ok, location: @harddisk }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @harddisk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harddisks/1 or /harddisks/1.json
  def destroy
    @harddisk.destroy
    respond_to do |format|
      format.html { redirect_to harddisks_url, notice: "Harddisk was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harddisk
      @harddisk = Harddisk.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def harddisk_params
      params.require(:harddisk).permit(:name, :description, :price, :produced, :brand_id, :category_id, :country_id, :volume, :interface, :factor)
    end
end
