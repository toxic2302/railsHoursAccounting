class WorkdaysPdf < Prawn::Document

  def initialize(workdays, current_user, view, workday_months)
    super(top_margin: 70)
    @workdays = workdays
    @user = current_user
    @view = view
    @workday_months = workday_months
    #@company_id = company_id
    #@selected_month = selected_month
    set_address
    set_image
    set_header
    set_table
  end

  def set_image
    image "public/uploads/company/logo/1/logo_sek_mi.png", :position => :right, :scale => 0.6
  end

  def set_address
    text "Name: #{@user.firstname} #{@user.lastname}", :text => :bold
    text "Email: #{@user.email}", :text => :bold
    text "Abteilung:", :text => :bold
  end

  def set_header
    move_down 20
    text "Arbeitszeiten 2017", :size => 25, :style => :bold, :color => '0000FF'
  end

  def set_table
    move_down 20
    @workday_months.sort.each do |month, workdays|
      text "#{month.strftime('%B')}", :size => 16

      table workdays_all(workdays) do
        row(0).font_style = :bold
        columns(1...5).align = :right
        self.width = 500
        self.row_colors = ["DDDDDD", "FFFFFF"]
        self.header = true
      end
    end
  end

  def workdays_all workdays
    [["Day", "Start", "End", "Company", "Project", "Working hours"]] +
        workdays.map do |workday|
          [workday.day.strftime('%d.%m.%Y'), workday.start.to_s(:time),
           workday.end.to_s(:time),
           workday.company.title,
           if workday.project.present?
             workday.project.title
           else
           end,
           Time.at(get_working_hours(workday)).utc.strftime('%H:%M')
          ]
        end
  end

  def get_working_hours workday
    workday.workingHours/60/60/24
  end
end