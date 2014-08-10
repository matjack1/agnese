ActiveAdmin.register Page do
  form do |f|
    f.translated_inputs "Translated fields", switch_locale: true do |t|
      t.input :title
      t.input :content
      t.input :date
      t.seo_meta_inputs
    end

    f.actions
  end
end

