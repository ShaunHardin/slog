app = app || {}

app.AppView = Backbone.View.extend({
  el: '#todoapp'

  statsTemplate: _.template $('#stats-template').html()

  initialize: ->
    @.allCheckbox = @.$('#toggle-all')[0]
    @.$input = @.$('#new-todo')
    @.$footer = @.$('#footer')
    @.$main = @.$('#main')

    @.listenTo(app.Todos, 'add', @.addOne)
    @.listenTo(app.Todos, 'reset', @.addAll)

  addOne: (todo) ->
    view = new app.TodoView({ model: todo })
    $('#todo-list').append view.render().el

  addAll: ->
    @.$('#todo-list').html ''
    app.Todos.each(@.addOne, @)
})
