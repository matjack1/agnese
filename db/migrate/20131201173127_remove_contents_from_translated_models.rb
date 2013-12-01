class RemoveContentsFromTranslatedModels < ActiveRecord::Migration
  def change
    remove_column :categories, :name, :string
    remove_column :projects, :title, :string
    remove_column :projects, :subtitle, :string
    remove_column :projects, :equipe, :string
    remove_column :projects, :description, :text
    remove_column :projects, :date, :string
  end
end

