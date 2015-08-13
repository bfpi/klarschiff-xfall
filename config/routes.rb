Rails.application.routes.draw do
  root 'interface#index'

  post '/'               => 'interface#index'
  get  'interface/:id'   => 'interface#show'
end
