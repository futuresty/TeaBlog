module ApplicationHelper
  def FullTitle(title)
    base_title = "Teablog"
    if title.empty?
      base_title
    else
      "#{base_title} | #{title}"
    end
  end
end
