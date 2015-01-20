class ChecklistController < ApplicationController
  def index
    @checklists = Checklist.all
  end
end
