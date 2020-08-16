class Admin::DashboardController < Admin::ApplicationController

  def index
    @employees = Employee.where.not(email: current_user.email)
  end
end