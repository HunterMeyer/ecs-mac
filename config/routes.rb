Ecs::Application.routes.draw do
  resources  :payment_notifications, only: [:create]
  devise_for :admins
  resources  :admins
  resources  :attendees
  resources  :vendors
  resources  :lectures, only: [:create, :new]

  root 'static_pages#index'
  match '/payment_notifications', to: 'payment_notifications#create', via: 'post'
  match '/faq',                   to: 'static_pages#faq',             via: 'get'
  match '/lectures',              to: 'lectures#new',                 via: 'get'
end
