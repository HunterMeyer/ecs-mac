Ecs::Application.routes.draw do
  devise_for :admins
  resources  :admins,    only: [:index, :show]
  resources  :attendees
  resources  :vendors
  
  root 'static_pages#index'

  match '/faq',       to: 'static_pages#faq',      via: 'get'
  match '/lectures',  to: 'static_pages#lectures', via: 'get'

end
