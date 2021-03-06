class ChangePostContentToText < ActiveRecord::Migration
  def up
    change_column :posts, :content, :text
  end

  def down
      # This might cause trouble if you have strings longer
      # than 255 characters.
      change_column :posts, :content, :string
  end
end
