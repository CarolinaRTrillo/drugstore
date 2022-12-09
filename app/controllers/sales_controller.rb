class SalesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :index, :show ]
  before_action :set_product, only: [ :create, :edit, :update, :destroy ]

  def new
    @sales = Sale.new
  end

  def index
    @sales = Sale.all
  end

  def show
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
