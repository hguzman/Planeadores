class PlaneacionesController < ApplicationController
  def index
  	@planeaciones = Planeacion.all
  end
end
