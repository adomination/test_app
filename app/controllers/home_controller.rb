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

  def update_status
    customer = Customer.find(params[:id])
    customer.update!(in_black_list: false)
    redirect_to action: :index
  end

  def add_phone
    customer = Customer.where(phone: params[:phone])
    customer.update(in_black_list: true)
    redirect_to(home_index_path(list: :black))
  end

  private

  def edit_customer_params
    params.require(:customer).permit(
      :name,
      :phone,
      :description,
      :in_black_list
    )
  end
end
