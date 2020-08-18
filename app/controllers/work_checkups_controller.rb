class WorkCheckupsController < ApplicationController
  def new
    @work_checkup = WorkCheckup.new
  end

  def create
    @work_checkup = WorkCheckup.new(work_checkup_params)
    employee = Employee.find_by(private_number: work_checkup_params[:private_number])
    @work_checkup.employee_id = employee&.id

    respond_to do |format|
      if @work_checkup.save
        format.html { redirect_to new_work_checkup_path, notice: 'Work Checkup was successfully created.' }
        format.json { render :show, status: :created, location: @company_branch }
      else
        format.html { render :new }
        format.json { render json: @work_checkup.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def work_checkup_params
      params.require(:work_checkup).permit(:private_number)
    end
end