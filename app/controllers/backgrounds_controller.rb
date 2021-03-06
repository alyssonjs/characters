class BackgroundsController < ApplicationController
  before_action :set_background, only: %i[ show edit update destroy ]

  # GET /backgrounds or /backgrounds.json
  def index
    @backgrounds = Background.all
  end

  # GET /backgrounds/1 or /backgrounds/1.json
  def show
  end

  # GET /backgrounds/new
  def new
    @background = Background.new
  end

  # GET /backgrounds/1/edit
  def edit
  end

  # POST /backgrounds or /backgrounds.json
  def create
    @background = Background.new(background_params)

    respond_to do |format|
      if @background.save
        format.html { redirect_to @background, notice: "Background was successfully created." }
        format.json { render :show, status: :created, location: @background }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @background.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backgrounds/1 or /backgrounds/1.json
  def update
    respond_to do |format|
      if @background.update(background_params)
        format.html { redirect_to @background, notice: "Background was successfully updated." }
        format.json { render :show, status: :ok, location: @background }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @background.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backgrounds/1 or /backgrounds/1.json
  def destroy
    @background.destroy
    respond_to do |format|
      format.html { redirect_to backgrounds_url, notice: "Background was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_background
      @background = Background.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def background_params
      params.require(:background).permit(:name)
    end
end
