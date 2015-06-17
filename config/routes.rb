Rails.application.routes.draw do
  root 'interface#index'

  get  'interface/:id'   => 'interface#show'
end
