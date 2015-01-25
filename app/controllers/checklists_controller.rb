class ChecklistsController < ApplicationController
  def index
    @checklists = Checklist.all
  end

  def show
    @checklist = Checklist.find(params[:id])
  end

  def new
    @checklist = Checklist.new
  end

  def create
    @checklist = Checklist.new(checklist_params)

    if @checklist.save
      redirect_to checklists_path, notice: 'Checklist was successfully created.'
    else
      render :new
    end
  end

  private
  def checklist_params
    params[:checklist].permit(:name)
  end
end
