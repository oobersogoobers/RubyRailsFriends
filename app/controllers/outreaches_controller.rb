class OutreachesController < ApplicationController
  before_action :set_outreach, only: %i[ show edit update destroy ]

  # GET /outreaches or /outreaches.json
  def index
    @outreaches = Outreach.all
  end

  # GET /outreaches/1 or /outreaches/1.json
  def show
  end

  # GET /outreaches/new
  def new
    @outreach = Outreach.new
  end

  # GET /outreaches/1/edit
  def edit
  end

  # POST /outreaches or /outreaches.json
  def create
    @outreach = Outreach.new(outreach_params)

    respond_to do |format|
      if @outreach.save
        format.html { redirect_to outreach_url(@outreach), notice: "Outreach was successfully created." }
        format.json { render :show, status: :created, location: @outreach }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @outreach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outreaches/1 or /outreaches/1.json
  def update
    respond_to do |format|
      if @outreach.update(outreach_params)
        format.html { redirect_to outreach_url(@outreach), notice: "Outreach was successfully updated." }
        format.json { render :show, status: :ok, location: @outreach }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @outreach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outreaches/1 or /outreaches/1.json
  def destroy
    @outreach.destroy

    respond_to do |format|
      format.html { redirect_to outreaches_url, notice: "Outreach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outreach
      @outreach = Outreach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def outreach_params
      params.require(:outreach).permit(:first_name, :last_name, :email, :phone, :instagram)
    end
end
