class TranslatePages < ActiveRecord::Migration
  def up
    Page.create_translation_table! title: :string, content: :text, date: :string
  end

  def down
    Page.drop_translation_table!
  end
end

