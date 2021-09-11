class SubClassJobsController < ApplicationController
  before_action :set_sub_class_job, only: %i[ show edit update destroy ]

  # GET /sub_class_jobs or /sub_class_jobs.json
  def index
    @sub_class_jobs = SubClassJob.all
  end

  # GET /sub_class_jobs/1 or /sub_class_jobs/1.json
  def show
  end

  # GET /sub_class_jobs/new
  def new
    @sub_class_job = SubClassJob.new
  end

  # GET /sub_class_jobs/1/edit
  def edit
  end

  # POST /sub_class_jobs or /sub_class_jobs.json
  def create
    @sub_class_job = SubClassJob.new(sub_class_job_params)

    respond_to do |format|
      if @sub_class_job.save
        format.html { redirect_to @sub_class_job, notice: "Sub class job was successfully created." }
        format.json { render :show, status: :created, location: @sub_class_job }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sub_class_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_class_jobs/1 or /sub_class_jobs/1.json
  def update
    respond_to do |format|
      if @sub_class_job.update(sub_class_job_params)
        format.html { redirect_to @sub_class_job, notice: "Sub class job was successfully updated." }
        format.json { render :show, status: :ok, location: @sub_class_job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sub_class_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_class_jobs/1 or /sub_class_jobs/1.json
  def destroy
    @sub_class_job.destroy
    respond_to do |format|
      format.html { redirect_to sub_class_jobs_url, notice: "Sub class job was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_class_job
      @sub_class_job = SubClassJob.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sub_class_job_params
      params.require(:sub_class_job).permit(:name, :class_job_id)
    end
end
