class NationalCareersController < ApplicationController
  before_action :set_national_career, only: [:show, :edit, :update, :destroy]

  # GET /national_careers
  # GET /national_careers.json
  def index
    @national_careers = NationalCareer.all
  end

  # GET /national_careers/1
  # GET /national_careers/1.json
  def show
  end

  # GET /national_careers/new
  def new
    @national_career = NationalCareer.new
  end

  # GET /national_careers/1/edit
  def edit
  end

  # POST /national_careers
  # POST /national_careers.json
  def create
    @national_career = NationalCareer.new(national_career_params)

    respond_to do |format|
      if @national_career.save
        format.html { redirect_to @national_career, notice: 'National career was successfully created.' }
        format.json { render :show, status: :created, location: @national_career }
      else
        format.html { render :new }
        format.json { render json: @national_career.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /national_careers/1
  # PATCH/PUT /national_careers/1.json
  def update
    respond_to do |format|
      if @national_career.update(national_career_params)
        format.html { redirect_to @national_career, notice: 'National career was successfully updated.' }
        format.json { render :show, status: :ok, location: @national_career }
      else
        format.html { render :edit }
        format.json { render json: @national_career.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /national_careers/1
  # DELETE /national_careers/1.json
  def destroy
    @national_career.destroy
    respond_to do |format|
      format.html { redirect_to national_careers_url, notice: 'National career was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_national_career
      @national_career = NationalCareer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def national_career_params
      params.require(:national_career).permit(:team, :matches, :goals, :assists, :yellow, :red, :player_id)
    end
end
