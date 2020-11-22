class CustomersController < ApplicationController

  def dashboard
    @customer = Customer.where('customer_name IN ?', :client).count
    byebug
    @contador = {
                  :client => @customer
                }
    byebug
    render json: @contador

  end
end