module ApplicationHelper

  def page_title
    [@page_title,App.name].compact.join(" || ")
  end
  
end
