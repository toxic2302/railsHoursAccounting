class WorkdayPdf < Prawn::Document

  def initialize(workday)
    super(top_margin: 70)
    @workday = workday
    set_image
    workday_id
    line_items
  end

  def set_image
    image "#{Rails.root}/app/assets/images/logo_sek_mi.png", :position => :right
  end

  def workday_id
    move_down 20
    text "Workday \##{@workday.id}", size: 30, style: :bold
  end

  def line_items
    move_down 20
    text @workday.day.strftime('%d.%m.%Y')
    text @workday.start.to_s(:time)
    text @workday.end.to_s(:time)
    text @workday.company.title
  end
end