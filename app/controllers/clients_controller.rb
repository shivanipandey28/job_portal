class ClientsController < ApplicationController
  before_action :authenticate_user!
  def index
    @clients = Client.all
  end
  def show
    @client = Client.find(params[:id])
  end

  def new 
    @client = Client.new
  end

  def create
    @client = Client.find(params[:id])
    if @job.save
      redirect_to client_path(@client), notice: 'Job created successfully.'
    else
      render :new
    end
  end

  private
  def client_params
    params.require(:client).permit(:name, :company_name, :contact_no, :email, :Address)
  end
end

                                                    
