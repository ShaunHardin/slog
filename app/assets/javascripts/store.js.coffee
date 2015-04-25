Slog.Store = DS.Store.extend()
Slog.ApplicationAdapter = DS.ActiveModelAdapter.extend()
DS.RESTAdapter.reopen
  namespace: 'api/v1'
