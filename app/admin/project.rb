ActiveAdmin.register Project do
  form do |f|
    f.translated_inputs "Translated fields", switch_locale: true do |t|
      t.input :title
      t.input :subtitle
      t.input :date
      t.input :equipe
      t.input :description
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

