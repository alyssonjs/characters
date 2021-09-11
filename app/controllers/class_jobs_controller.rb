class ClassJobsController < ApplicationController
  before_action :set_class_job, only: %i[ show edit update destroy ]

  # GET /class_jobs or /class_jobs.json
  def index
    @class_jobs = ClassJob.all
  end

  # GET /class_jobs/1 or /class_jobs/1.json
  def show
  end

  # GET /class_jobs/new
  def new
    @class_job = ClassJob.new
  end

  # GET /class_jobs/1/edit
  def edit
  end

  # POST /class_jobs or /class_jobs.json
  def create
    @class_job = ClassJob.new(class_job_params)

    respond_to do |format|
      if @class_job.save
        format.html { redirect_to @class_job, notice: "Class job was successfully created." }
        format.json { render :show, status: :created, location: @class_job }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @class_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_jobs/1 or /class_jobs/1.json
  def update
    respond_to do |format|
      if @class_job.update(class_job_params)
        format.html { redirect_to @class_job, notice: "Class job was successfully updated." }
        format.json { render :show, status: :ok, location: @class_job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @class_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_jobs/1 or /class_jobs/1.json
  def destroy
    @class_job.destroy
    respond_to do |format|
      format.html { redirect_to class_jobs_url, notice: "Class job was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_job
      @class_job = ClassJob.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def class_job_params
      params.require(:class_job).permit(:name)
    end
end
