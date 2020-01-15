Rails.application.routes.draw do
  resources :dogs
  resources :employees
  get 'dogs/index/up-for-adoption', to: 'dogs#up_for_adoption', as: 'dogs_up_for_adoption'
  get 'dogs/:id/adopt-this-dog', to: 'dogs#adopt_this_dog', as: 'adopt_this_dog'
  patch 'dogs/:id/adoption', to: 'dogs#adoption', as: 'adoption'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
