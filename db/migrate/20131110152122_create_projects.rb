class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.string :subtitle
      t.string :equipe
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end
end

