class PagesController < ApplicationController
  layout 'pages'

  def index
    @workdays = Workday.all
    @projects = Project.all
    @companies = Company.all
  end

  def calculateWorkingHours
    @workdays.each do |workday|
      @allHours += TimeDifference.between(workday.start, workday.end).in_years
    end
  end
end
