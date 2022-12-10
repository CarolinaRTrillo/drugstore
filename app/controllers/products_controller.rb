class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :new ]
  before_action :set_product, only: [ :show, :edit, :update, :destroy ]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new(product_params)
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @product.update(params[:product])

    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy

    redirect_to product_path, status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :details)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
