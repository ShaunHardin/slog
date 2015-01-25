class ChecklistItemsController < ApplicationController
  before_action :set_checklist_item, only: [:show, :edit, :update, :destroy]

  # GET /checklist_items
  def index
    @checklist_items = ChecklistItem.all
  end

  # GET /checklist_items/1
  def show
  end

  # GET /checklist_items/new
  def new
    @checklist_item = ChecklistItem.new
  end

  # GET /checklist_items/1/edit
  def edit
  end

  # POST /checklist_items
  def create
    @checklist_item = ChecklistItem.new(checklist_item_params)

    if @checklist_item.save
      redirect_to @checklist_item, notice: 'Checklist item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /checklist_items/1
  def update
    if @checklist_item.update(checklist_item_params)
      redirect_to @checklist_item, notice: 'Checklist item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /checklist_items/1
  def destroy
    @checklist_item.destroy
      redirect_to checklist_items_url, notice: 'Checklist item was successfully destroyed.'
  end

  private
    def set_checklist_item
      @checklist_item = ChecklistItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checklist_item_params
      params[:checklist_item]
    end
end
