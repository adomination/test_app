class HomeController < ApplicationController
  def index
    @customers = Customer.all.order(:name)
  end
end
