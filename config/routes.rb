Ecs::Application.routes.draw do
  devise_for :admins
  resources  :admins
  resources  :attendees, only: [:create, :new]
  resources  :vendors,   only: [:create, :new]
  
  root 'static_pages#index'

  match '/faq',       to: 'static_pages#faq',      via: 'get'
  match '/lectures',  to: 'static_pages#lectures', via: 'get'
end
