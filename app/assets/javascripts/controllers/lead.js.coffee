Slog.LeadController = Ember.Controller.extend
  showUnsavedMessage: ( ->
    @get('model.isDirty') and !@get('model.isSaving')
  ).property('model.isDirty', 'model.isSaving')

  actions:
    saveChanges: -> @get('model').save() if @get('model.isDirty')
