class DomesticsController < ApplicationController
  before_action :set_domestic, only: [:show, :edit, :update, :destroy]

  # GET /domestics
  # GET /domestics.json
  def index
    @domestics = Domestic.all
  end

  # GET /domestics/1
  # GET /domestics/1.json
  def show
  end

  # GET /domestics/new
  def new
    @domestic = Domestic.new
  end

  # GET /domestics/1/edit
  def edit
  end

  # POST /domestics
  # POST /domestics.json
  def create
    @domestic = Domestic.new(domestic_params)

    respond_to do |format|
      if @domestic.save
        format.html { redirect_to @domestic, notice: 'Domestic was successfully created.' }
        format.json { render :show, status: :created, location: @domestic }
      else
        format.html { render :new }
        format.json { render json: @domestic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /domestics/1
  # PATCH/PUT /domestics/1.json
  def update
    respond_to do |format|
      if @domestic.update(domestic_params)
        format.html { redirect_to @domestic, notice: 'Domestic was successfully updated.' }
        format.json { render :show, status: :ok, location: @domestic }
      else
        format.html { render :edit }
        format.json { render json: @domestic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /domestics/1
  # DELETE /domestics/1.json
  def destroy
    @domestic.destroy
    respond_to do |format|
      format.html { redirect_to domestics_url, notice: 'Domestic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_domestic
      @domestic = Domestic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def domestic_params
      params.require(:domestic).permit(:competition, :countts, :years, :position, :player_id)
    end
end
