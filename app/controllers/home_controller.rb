# This is testing controller
class HomeController < ApplicationController
  def index
    flash[:notice] = t(:home_flash)
  end
end
