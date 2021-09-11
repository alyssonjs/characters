class SubRacesController < ApplicationController
  before_action :set_sub_race, only: %i[ show edit update destroy ]

  # GET /sub_races or /sub_races.json
  def index
    @sub_races = SubRace.all
  end

  # GET /sub_races/1 or /sub_races/1.json
  def show
  end

  # GET /sub_races/new
  def new
    @sub_race = SubRace.new
  end

  # GET /sub_races/1/edit
  def edit
  end

  # POST /sub_races or /sub_races.json
  def create
    @sub_race = SubRace.new(sub_race_params)

    respond_to do |format|
      if @sub_race.save
        format.html { redirect_to @sub_race, notice: "Sub race was successfully created." }
        format.json { render :show, status: :created, location: @sub_race }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sub_race.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_races/1 or /sub_races/1.json
  def update
    respond_to do |format|
      if @sub_race.update(sub_race_params)
        format.html { redirect_to @sub_race, notice: "Sub race was successfully updated." }
        format.json { render :show, status: :ok, location: @sub_race }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sub_race.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_races/1 or /sub_races/1.json
  def destroy
    @sub_race.destroy
    respond_to do |format|
      format.html { redirect_to sub_races_url, notice: "Sub race was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_race
      @sub_race = SubRace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sub_race_params
      params.require(:sub_race).permit(:name, :race_id)
    end
end
