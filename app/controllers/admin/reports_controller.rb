class Admin::ReportsController < Admin::ApplicationController
  def index
    @attendance_by_the_day = WorkCheckup.where('created_at >= ? and created_at <=?', Date.today.midnight, Date.today.end_of_day)
    @average_time = WorkCheckup.where('created_at >= ? and created_at <=?', Date.today.at_beginning_of_month, Date.today.at_end_of_month).group(:private_number).count
  end
end