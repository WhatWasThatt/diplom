class MonitorssesController < ApplicationController
  before_action :set_monitorss, only: %i[ show edit update destroy ]

  # GET /monitorsses or /monitorsses.json
  def index
    @monitorsses = Monitorss.all
  end

  # GET /monitorsses/1 or /monitorsses/1.json
  def show
  end

  # GET /monitorsses/new
  def new
    @monitorss = Monitorss.new
  end

  # GET /monitorsses/1/edit
  def edit
  end

  # POST /monitorsses or /monitorsses.json
  def create
    @monitorss = Monitorss.new(monitorss_params)

    respond_to do |format|
      if @monitorss.save
        format.html { redirect_to @monitorss, notice: "Monitorss was successfully created." }
        format.json { render :show, status: :created, location: @monitorss }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @monitorss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitorsses/1 or /monitorsses/1.json
  def update
    respond_to do |format|
      if @monitorss.update(monitorss_params)
        format.html { redirect_to @monitorss, notice: "Monitorss was successfully updated." }
        format.json { render :show, status: :ok, location: @monitorss }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @monitorss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitorsses/1 or /monitorsses/1.json
  def destroy
    @monitorss.destroy
    respond_to do |format|
      format.html { redirect_to monitorsses_url, notice: "Monitorss was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitorss
      @monitorss = Monitorss.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def monitorss_params
      params.require(:monitorss).permit(:name, :description, :price, :diagonal, :category_id, :resolution, :color_id, :brand_id, :produced, :resolution, :country_id)
    end
end
