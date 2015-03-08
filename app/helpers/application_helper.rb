module ApplicationHelper
  def bootstrap_class_for(flash_type)
    flash_type = flash_type.to_sym
    known_classes = {
      success: 'alert-success',
      error: 'alert-danger',
      alert: 'alert-warning',
      notice: 'alert-info'
    }
    known_classes[flash_type] || flash_type.to_s
  end
end
