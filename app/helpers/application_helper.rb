module ApplicationHelper
  def categories_navigation
    content_tag(:ul) do
      Category.all.map do |c|
        content_tag(:li) do
          c = present(c)
          link_to c.name, projects_path(category: c), class: c.active_class(params[:category].to_i)
        end
      end.join.html_safe
    end
  end
end

