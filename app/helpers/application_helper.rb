module ApplicationHelper
  def title_string(title)
    if title.blank?
      "SMILE-UP."
    else
      "#{title} | SMILE-UP."
    end
  end
end
