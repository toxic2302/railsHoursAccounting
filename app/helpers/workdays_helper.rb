module WorkdaysHelper

  # get the working hours for an workday in hh:mm
  def get_working_hours workday
    workday.workingHours/60/60/24
  end

  # get the total working hours per month
  def get_total_working_hours workdays
    result = 0
    workdays.each do |workday|
      result = result + get_working_hours(workday)
    end
    result
  end
end
