class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def black_list
  end
end
