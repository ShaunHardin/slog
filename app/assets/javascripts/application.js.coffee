#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require ember
#= require ember-data
#= require_self
#= require slog
#= require_tree

# for more details see: http://emberjs.com/guides/application/
window.Slog = Ember.Application.create
  rootElement: '#ember-app'
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  LOG_VIEW_LOOKUPS: true
