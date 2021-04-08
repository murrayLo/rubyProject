class HomeController < ApplicationController
  def index
  end

  def show
    @fee_csv = CSV.open("fees.csv", :headers => true).Read
  end
end
