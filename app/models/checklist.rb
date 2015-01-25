class Checklist < ActiveRecord::Base
  has_many :checklist_items, dependent: :destroy
end
