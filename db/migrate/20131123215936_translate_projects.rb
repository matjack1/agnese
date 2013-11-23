class TranslateProjects < ActiveRecord::Migration
  def up
    Project.create_translation_table! title: :string, subtitle: :string, equipe: :string, description: :text, date: :string
  end

  def down
    Project.drop_translation_table!
  end
end

