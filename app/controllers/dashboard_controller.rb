class DashboardController < ApplicationController
	before_action :authenticate_usuario!
	layout "dashboard"
  def dashboard
  end
end
