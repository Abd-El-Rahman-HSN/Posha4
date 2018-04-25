class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    #@players = Player.where({"%#{params[:search]}%"})
    @players = Player.all
    #name = params[:search]
    #@players = Player.search(name)


    #@players = Player.search(params[:term])
  end

  # GET /players/1
  # GET /players/1.json
  def show
    @continental = Continental.all
    @domestic = Domestic.all
    @individual = Individual.all
    @national_career = NationalCareer.all
    @national = National.all
    @performance = Performance.all
    @transfer = Transfer.all
  end

  # GET /players/new
  def new
    @player = Player.new
    @player.transfers.build
    @player.performances.build
    @player.national_careers.build
    @player.domestics.build
    @player.continentals.build
    @player.nationals.build
    @player.individuals.build
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:slug, :name, :photo, :main_position, :other_positions, :nationality, :second_nationality, :born, :height, :foot, :current_club, :country, :competition, :tier, :contract_status, :ending_contract, :agent, :social_face, :social_twit, :social_insta, :international, :youtube_links,
        transfers_attributes: [:season, :data, :from,  :to, :transfer_fee, :player_id, :_destroy],
        performances_attributes: [:season, :club, :country,  :competition, :tier, :matches, :goals, :assists, :yellow, :red, :player_id, :_destroy],
        national_careers_attributes: [:team, :matches, :goals,  :assists, :yellow, :red, :player_id, :_destroy],
        domestics_attributes: [:competition, :countts, :years,  :position, :player_id, :_destroy],
        continentals_attributes: [:competition, :countts, :years,  :position, :player_id, :_destroy],
        nationals_attributes: [:competition, :countts, :years,  :position, :player_id, :_destroy],
        individuals_attributes: [:hyper, :photo, :linkd, :player_id, :_destroy])
    end
end
