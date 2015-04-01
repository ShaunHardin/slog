class App.TodoView extends Backbone.View

  tagName: 'li'
  template: JST['todos/todo_item']
  events:
    'dblclick label': 'edit'
    'keypress .edit': 'updateOnEnter'
    'blur .edit': 'close'

  initialize: ->
    @.listenTo @.model, 'change', @.render

  render: ->
    @.$el.html @.template(@.model.attributes)
    @.$input = @.$('.edit')
    @

  edit: ->
    @.$el.addClass 'editing'
    @.$input.focus()

  close: ->
    value = @.$input.val().trim()

    if value
      @.model.save
        title: value

    @.$el.removeClass 'editing'

  updateOnEnter: (e) ->
    if e.which == ENTER_KEY
      @.close()
