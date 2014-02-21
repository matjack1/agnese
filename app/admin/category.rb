ActiveAdmin.register Category do
  sortable

  index as: :sortable do
    label :name
    actions
  end

  form do |f|
    f.translated_inputs "Translated fields", switch_locale: true do |t|
      t.input :name
    end
    f.actions
  end
end

