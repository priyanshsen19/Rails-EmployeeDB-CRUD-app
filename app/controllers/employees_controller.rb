class EmployeesController < ApplicationController
 def index
      @employees=Employee.all
  end

  def new
      @employee=Employee.new
  end

  def create
    @employee=Employee.create(params.require(:employee).permit(:emp_id,:company_id,:name,:status))
    if @employee.valid?
       redirect_to employees_path
    else
    	flash[:errors] =@employee.errors.full_messages
    	redirect_to new_employee_path      
    end
  end

  def show
      @employee=Employee.find(params[:id])
  end

  def edit
      @employee= Employee.find(params[:id])
  end

  def update
      @employee= Employee.find(params[:id])
      @employee= Employee.update(params.require(:employee).permit(:emp_id,:company_id,:name,:status))
      redirect_to employee_path(@employee)	
  end

  def destroy
      @employee= Employee.find(params[:id])
      @employee.destroy
      redirect_to employees_path
  end

  private
  def employee_params
      params.require(:employee).permit(:emp_id,:company_id,:name,:status)
  end
end
