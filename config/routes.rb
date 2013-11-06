Ecs::Application.routes.draw do
  devise_for :admins
  resources  :admins
  resources  :attendees, only: [:index, :create, :new]
  resources  :vendors,   only: [:index, :create, :new]

  root 'static_pages#index'

  match '/faq',       to: 'static_pages#faq',      via: 'get'
  match '/lectures',  to: 'static_pages#lectures', via: 'get'
end
