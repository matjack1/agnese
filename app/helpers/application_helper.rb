module ApplicationHelper
  def categories_navigation
    content_tag(:ul) do
      Category.all.map do |c|
        content_tag(:li) do
          link_to c.name, projects_path(category: c)
        end
      end.join.html_safe
    end
  end
end

