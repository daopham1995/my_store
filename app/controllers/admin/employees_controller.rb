class Admin::EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to admin_employee_path(@employee)
    else
      render :new, status: 422
    end
  end

  def show
    @employee = Employee.find_by id: params[:id]
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :email, :password)
  end
end
