class TutorsController < ApplicationController

  def index
    @tutors = Tutor.all
  end
    
  def show
    @tutor = Tutor.find(params[:id])
  end
end
