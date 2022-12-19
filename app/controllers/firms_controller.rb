class FirmsController < ApplicationController
 def index
  end

  def new
      @firm=Firm.new
  end

  def create
    @firm=Firm.create(params.require(:firm).permit(:employee_id,:techskill_id,:name,:verified))
    redirect_to employee_path(@firm.employee)
  end
  def destroy
      @firm= Firm.find(params[:id])
      @employee=@firm.employee
      @firm.destroy
      redirect_to employee_path(@employee)
  end
end
