class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.string :name
      t.boolean :complete?
      t.integer :rank

      t.timestamps
    end
  end
end
