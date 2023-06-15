class ApplicationController < ActionController::Base
   def index
    if current_user.client?
      redirect_to jobs_new_path
    else
      redirect_to show_job_path
    end
  end
end
