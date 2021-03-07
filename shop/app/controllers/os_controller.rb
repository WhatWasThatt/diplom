class OsController < ApplicationController
  before_action :set_o, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /os or /os.json
  def index
    @os = O.all
  end

  # GET /os/1 or /os/1.json
  def show
  end

  # GET /os/new
  def new
    @o = O.new
  end

  # GET /os/1/edit
  def edit
  end

  # POST /os or /os.json
  def create
    @o = O.new(o_params)

    respond_to do |format|
      if @o.save
        format.html { redirect_to @o, notice: "O was successfully created." }
        format.json { render :show, status: :created, location: @o }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @o.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /os/1 or /os/1.json
  def update
    respond_to do |format|
      if @o.update(o_params)
        format.html { redirect_to @o, notice: "O was successfully updated." }
        format.json { render :show, status: :ok, location: @o }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @o.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os/1 or /os/1.json
  def destroy
    @o.destroy
    respond_to do |format|
      format.html { redirect_to os_url, notice: "O was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_o
      @o = O.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def o_params
      params.require(:o).permit(:name)
    end
end
