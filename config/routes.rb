# frozen_string_literal: true

Rails.application.routes.draw do
  get 'likes/create'
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :tweets do
    resources :likes
  end

  root 'tweets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
