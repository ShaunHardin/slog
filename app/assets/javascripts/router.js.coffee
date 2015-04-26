# For more information see: http://emberjs.com/guides/routing/

Slog.Router.reopen
  location: 'auto'
  rootURL: '/crm/'

Slog.Router.map ()->
  @resource 'leads', path: '/', ->
    @resource 'lead', path: '/leads/:id'

