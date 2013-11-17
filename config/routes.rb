Ecs::Application.routes.draw do
  resources  :payment_notifications
  devise_for :admins
  resources  :admins
  resources  :attendees
  resources  :vendors

  root 'static_pages#index'

  match '/faq',       to: 'static_pages#faq',      via: 'get'
  match '/lectures',  to: 'static_pages#lectures', via: 'get'
end
