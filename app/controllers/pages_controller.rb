class PagesController < ApplicationController
  layout 'pages'

  def index
    if user_signed_in?
      @workdays = current_user.workdays.all
      @projects = current_user.projects.all
      @companies = current_user.companies.all
    end
  end

  def calculateWorkingHours
    @workdays.each do |workday|
      @allHours += TimeDifference.between(workday.start, workday.end).in_years
    end
  end
end
