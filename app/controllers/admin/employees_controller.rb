class Admin::EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new
  end

  def show
    @employee = Employee.find_by id: params[:id]
  end
end
