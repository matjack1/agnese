ActiveAdmin.register Category do
  index do
    column :name
    default_actions
  end

  form do |f|
    f.translated_inputs "Translated fields", switch_locale: true do |t|
      t.input :name
    end
    f.actions
  end
end

