class CustomersController < ApplicationController
  before_action :find_customer, only: [:destroy, :edit, :update]

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

  def edit
  end
  
  def update
    if @customer.update(customer_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end
  
  private
    def customer_params
      params.require(:customer).permit(:name, :phone, :description)
    end

  private
 
  def find_customer
    @customer = Customer.find(params[:id])
  end

end
