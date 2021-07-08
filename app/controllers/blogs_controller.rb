class BlogsController < ApplicationController
  before_action :authenticate_user!

	def index
    @user = current_user.email
  end
end
