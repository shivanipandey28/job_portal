class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new 
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to @job
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def job_params
    params.require(:job).permit(:job_title, :description,:company_name, :job_location, :job_requirement, :salary, :working_hour, :last_date)
  end
end
