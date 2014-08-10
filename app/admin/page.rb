ActiveAdmin.register Page do
  form do |f|
    f.translated_inputs "Translated fields", switch_locale: true do |t|
      t.input :title
      t.input :content
      t.input :date
    end

    f.seo_meta_inputs

    f.actions
  end
end

