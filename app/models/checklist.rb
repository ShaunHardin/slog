class Checklist < ActiveRecord::Base
  def items
    ChecklistItem.where(checklist_id: id)
  end
end
