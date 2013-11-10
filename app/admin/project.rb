ActiveAdmin.register Project do
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

    f.inputs :gallery do
      f.has_many_images :pictures
    end

    f.inputs "Categories" do
      f.inputs :categories
    end
    f.actions
  end
end

