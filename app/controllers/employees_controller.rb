class EmployeesController < ApplicationController
  caches_action :index

  def index
    @employees = Employee.by_gender params[:gender]
  end
end
