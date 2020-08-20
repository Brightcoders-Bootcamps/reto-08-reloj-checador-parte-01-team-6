class Admin::ReportsController < Admin::ApplicationController
  def index
    @attendance_by_the_day = WorkCheckup.where('created_at >= ? and created_at <=?', Date.today.midnight, Date.today.end_of_day)
  end
end