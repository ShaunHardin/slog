require 'test_helper'

class ChecklistItemsControllerTest < ActionController::TestCase
  setup do
    @checklist_item = checklist_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checklist_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create checklist_item" do
    assert_difference('ChecklistItem.count') do
      post :create, checklist_item: {  }
    end

    assert_redirected_to checklist_item_path(assigns(:checklist_item))
  end

  test "should show checklist_item" do
    get :show, id: @checklist_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @checklist_item
    assert_response :success
  end

  test "should update checklist_item" do
    patch :update, id: @checklist_item, checklist_item: {  }
    assert_redirected_to checklist_item_path(assigns(:checklist_item))
  end

  test "should destroy checklist_item" do
    assert_difference('ChecklistItem.count', -1) do
      delete :destroy, id: @checklist_item
    end

    assert_redirected_to checklist_items_path
  end
end
