class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :contacto, :nosotros ]

  def home
    @products = Product.all.first(4)
  end

  def contacto

  end

  def nosotros

  end

end
