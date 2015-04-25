#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require ember
#= require ember-data
#= require_self
#= require slog

# for more details see: http://emberjs.com/guides/application/
window.Slog = Ember.Application.create
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  LOG_VIEW_LOOKUPS: true
