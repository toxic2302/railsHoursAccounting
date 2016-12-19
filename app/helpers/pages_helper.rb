module PagesHelper

  def statistics
    pie_chart [["Workdays", @workdays.count], ["Companies", @companies.count], ["Projects", @projects.count]], height: '500px', library: {
        title: {text: 'Workdays'}
    }
  end
end
