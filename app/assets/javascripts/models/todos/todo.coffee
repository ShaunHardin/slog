app = app || {}

app.Todo = Backbone.Model.extend({
  defaults:
    title: '',
    completed: false

  toggle: ->
    @.save(
      completed:
        !@.get 'completed'
    )
})
