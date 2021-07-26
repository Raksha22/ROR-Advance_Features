class HomesController < ApplicationController
  def index
    # index
  end

  def set_cookies
    user_name = Home.first.name
    user_comment = Home.first.comment
    cookies[:user_name]   = user_name 
    cookies[:user_comment] = user_comment
  end
  
  def show_cookies
    @user_name    = cookies[:user_name]
    @user_comment = cookies[:user_comment]
  end
  
  def delete_cookies
    cookies.delete :user_name
    cookies.delete :user_comment
  end
end
