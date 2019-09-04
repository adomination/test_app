class HomeController < ApplicationController
  def index
    @customers = Customer.all.order(:name)
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])

    if @customer.update(edit_customer_params)
      redirect_to action: :index
    end
  end

  private

  def edit_customer_params
    params.require(:home).
      permit(
        :name,
        :phone,
        :description,
        :in_black_list
      )
  end
end
