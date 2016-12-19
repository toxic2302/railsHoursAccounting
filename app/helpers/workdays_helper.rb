module WorkdaysHelper

  def get_working_hours workday
    workday.workingHours/60/60/24
  end
end
