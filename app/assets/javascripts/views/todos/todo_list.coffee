class App.TodoListView extends Backbone.View
  ENTER_KEY = 13
  el: '#todoapp'

  statsTemplate: JST['todos/todo_stats']

  events:
    'keypress #new-todo': 'createOnEnter'
    'click #clear-completed': 'clearCompleted'
    'click #toggle-all': 'toggleAllComplete'

  initialize: ->
    @.allCheckbox = @.$('#toggle-all')[0]
    @.$input = @.$('#new-todo')
    @.$footer = @.$('#footer')
    @.$main = @.$('#main')

    @.listenTo(App.Todos, 'add', @.addOne)
    @.listenTo(App.Todos, 'reset', @.addAll)

  render: ->
    completed = App.Todos.completed().length
    remaining = App.Todos.remaining().length

    if App.Todos.length
      @.$main.show()
      @.$footer.show()

      @.$footer.html @.statsTemplate({
        completed: completed
        remaining: remaining
      })

      @.$('#filters li a').removeClass('selected')
        .filter('[href="#/' + ( App.TodoFilter || '' ) + '"]')
        .addClass('selected')
    else
      @.$main.hide()
      @.$footer.hide()

    @.allCheckbox.checked = !remaining

  addOne: (todo) ->
    view = new App.TodoView({ model: todo })
    $('#todo-list').append view.render().el

  addAll: ->
    @.$('#todo-list').html ''
    App.Todos.each(@.addOne, @)

  filterOne: (todo) ->
    todo.trigger('visible')

  filterAll: ->
    App.Todos.each @.filterOne, @

  newAttributes: ->
    return {
      title: @.$input.val().trim()
      order: App.Todos.nextOrder()
      completed: false
    }

  createOnEnter: (event) ->
    if event.which != ENTER_KEY || !@.$input.val().trim()
      return

    App.Todos.create @.newAttributes()
    @.$input.val('')

  clearCompleted: ->
    _.invoke App.Todos.completed(), 'destroy'
    return false

  toggleAllComplete: ->
    completed = @.allCheckbox.checked
    App.Todos.each (todo) ->
      todo.save({
        'completed': completed
      })
