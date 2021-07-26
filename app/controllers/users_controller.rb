class UsersController < ApplicationController
  before_action :set_requests

  def index
    @users = User.all 
  end

  private
  
  def set_requests
    @requests = session[:requests]
    @requests ||= Array.new
    @requests.push(request.url)
    if @requests.count > 3
      @requests.shift
    end
    session[:requests] = @requests
  end
end
  