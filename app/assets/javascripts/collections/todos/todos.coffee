app = app || {}

TodoList = Backbone.Collection.extend({
  model: app.Todo

  localStorage: new Backbone.LocalStorage('todos-backbone')

  completed: ->
    return this.filter (todo) ->
      return todo.get 'completed'

  remaining: ->
    return @.without.apply @, @.completed()

  nextOrder: ->
    if !@.length
      return 1
    return @.last().get 'order' + 1

  comparator: (todo) ->
    return todo.get 'order'
})

app.Todos = new TodoList()
