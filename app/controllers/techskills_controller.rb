class TechskillsController < ApplicationController
 def index
  end

  def new
      @techskill=Techskill.new
  end

  def create
    @techskill=Techskill.create(params.require(:techskill).permit(:name))
    redirect_to employee_path(@techskill.employee)
  end
  def destroy
      @techskill= Techskill.find(params[:id])
      @employee=@techskill.employee
      @techskill.destroy
      redirect_to employee_path(@employee)
  end
end
