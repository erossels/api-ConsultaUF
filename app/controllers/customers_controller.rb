class CustomersController < ApplicationController

  def dashboard
    @customer = Customer.where('customer_name IN ?', :client).count

    @contador = {
                  :client => @customer
                }

    respond_to do |format|
      format.json {
                    render json: @contador
                  }
    end
  end
end