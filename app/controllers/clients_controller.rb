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
    @client = Client.new(client_params)
    if @client.save
      redirect_to @client, notice: 'Profile created succesfully'
    else
      render :new, status: :unprocessable_entity 
    end
  end

  private
  def client_params
    params.require(:client).permit(:name, :company_name, :contact_no, :email, :Address)
  end
end

                                                    
