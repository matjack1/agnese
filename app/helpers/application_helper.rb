module ApplicationHelper
  def categories_navigation
    content_tag(:ul) do
      links = ''

      links << content_tag(:li) do
        link_to t('all_projects'), projects_path
      end

      links << Category.all.map do |c|
        content_tag(:li) do
          c = present(c)
          link_to c.name, projects_path(category: c), class: c.active_class(params[:category].to_i)
        end
      end.join

      links.html_safe
    end
  end
end

