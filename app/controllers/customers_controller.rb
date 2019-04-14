class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end
  def home
    @customers = current_customer
  end
  def new
    @customer= Customer.new
  end
  def show
    @customer= Customer.find(params[:id])
  end
  def create
    @customer =Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path
    end
  end
  def customer_params
    params.fetch(:customer, {}).permit(:firstname, :lastname, :age, :occupation)
  end
  def set_user
    @customer = Customer.find(params[:id])
  end
end
