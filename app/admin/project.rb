ActiveAdmin.register Project do
  controller do
    def permitted_params
      params.permit project: [:title, :subtitle, :equipe, :description, :date, category_ids: []]
    end
  end

  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :subtitle
    end
    f.inputs "Content" do
      f.input :date
      f.input :equipe
      f.input :description
    end

    f.inputs "Categories" do
      f.inputs :categories
    end
    f.actions
  end
end

