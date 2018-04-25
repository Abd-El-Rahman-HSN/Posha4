class ContinentalsController < ApplicationController
  before_action :set_continental, only: [:show, :edit, :update, :destroy]

  # GET /continentals
  # GET /continentals.json
  def index
    @continentals = Continental.all
  end

  # GET /continentals/1
  # GET /continentals/1.json
  def show
  end

  # GET /continentals/new
  def new
    @continental = Continental.new
  end

  # GET /continentals/1/edit
  def edit
  end

  # POST /continentals
  # POST /continentals.json
  def create
    @continental = Continental.new(continental_params)

    respond_to do |format|
      if @continental.save
        format.html { redirect_to @continental, notice: 'Continental was successfully created.' }
        format.json { render :show, status: :created, location: @continental }
      else
        format.html { render :new }
        format.json { render json: @continental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /continentals/1
  # PATCH/PUT /continentals/1.json
  def update
    respond_to do |format|
      if @continental.update(continental_params)
        format.html { redirect_to @continental, notice: 'Continental was successfully updated.' }
        format.json { render :show, status: :ok, location: @continental }
      else
        format.html { render :edit }
        format.json { render json: @continental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /continentals/1
  # DELETE /continentals/1.json
  def destroy
    @continental.destroy
    respond_to do |format|
      format.html { redirect_to continentals_url, notice: 'Continental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_continental
      @continental = Continental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def continental_params
      params.require(:continental).permit(:competition, :countts, :years, :position, :player_id)
    end
end
