class EmployeesController < ApplicationController
  def index
    @employees = Employee.by_gender params[:gender]
  end
end
