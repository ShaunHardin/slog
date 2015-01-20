class ChangeChecklists < ActiveRecord::Migration
  def up
    remove_column :checklists, :complete?
    remove_column :checklists, :rank
  end

  def down
    add_column :checklists, :complete?
    add_column :checklists, :rank
  end
end
