window.App =
  Models: {}
  Collections: {}
  Views: {}
  init: ->
    new App.TodoListView()

$ ->
  App.init()
