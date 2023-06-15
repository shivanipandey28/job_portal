class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new 
    @job = current_user.jobs.new
  end
 
  def create
    @job = current_user.jobs.new(job_params)
    if @job.save
      redirect_to @job
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])

    if @job.update(job_params)
      redirect_to @job
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to root_path, status: :see_other
  end
 def apply
    @job = Job.find(params[:job_id])
    redirect_to job_path(@job), notice: 'Application submitted successfully!'
  end

  private
  def job_params
    params.require(:job).permit(:job_title, :description,:company_name, :job_location, :job_requirement, :salary, :working_hour, :last_date)
  end
end
