class TacosController < ApplicationController

  def index
    @fillings = ["Carnitas", "Al Pastor", "Steak", "Fish", "Veggie"]
    # render tacos/index view
  end

end