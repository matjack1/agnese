class AddPositionToProjectAndCategory < ActiveRecord::Migration
  def change
    add_column :projects, :position, :integer
    add_column :categories, :position, :integer
  end
end

