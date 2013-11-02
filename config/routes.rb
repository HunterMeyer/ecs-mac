Ecs::Application.routes.draw do
  devise_for :admins
  devise_for :vendors
  devise_for :attendees

  resources  :admins,    only: [:index, :show]
  resources  :attendees, only: [:index, :show]
  resources  :vendors,   only: [:index, :show]
  
  root 'static_pages#index'

  match '/faq',       to: 'static_pages#faq',      via: 'get'
  match '/lectures',  to: 'static_pages#lectures', via: 'get'

end
