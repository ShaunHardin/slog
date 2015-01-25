class CreateChecklistItems < ActiveRecord::Migration
  def change
    create_table :checklist_items do |t|
      t.string :description
      t.integer :checklist_id
      t.integer :priority
      t.boolean :completed?

      t.timestamps
    end
  end
end
