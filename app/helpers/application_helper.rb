# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def display_date(input_date)
    return input_date.strftime("%d %B %Y")
  end
  
end
