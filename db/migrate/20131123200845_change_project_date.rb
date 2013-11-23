class ChangeProjectDate < ActiveRecord::Migration
  def up
    change_table :projects do |t|
      t.change :date, :string
    end
  end

  def down
    change_table :projects do |t|
      t.change :date, :datetime
    end
  end
end

