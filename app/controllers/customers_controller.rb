class CustomersController < ApplicationController
  before_action :find_customer, only: [:destroy]

  def index
    @customers = Customer.all
  end

  def black_list
    @customers = Customer.all
  end

  def destroy
    @customer.update(black_list: true)
    redirect_to root_path
  end

  private
 
  def find_customer
    @customer = Customer.find(params[:id])
  end

end
