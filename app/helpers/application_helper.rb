module ApplicationHelper
  def title_string(title)
    if title.blank?
      "SMILE-UP."
    else
      "#{title} | SMILE-UP."
    end
  end

  def link_icon
    @link_icon ||= content_tag(:i, '', class: 'fa-solid fa-up-right-from-square')
  end
end
