class CustomersController < ApplicationController

  def dashboard
    @customer = Customer.where(:customer_name => params[:client]).count
    @contador = {
                  :requests_of_client => @customer
                }
    
    render json: @contador
  end
end