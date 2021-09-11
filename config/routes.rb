Rails.application.routes.draw do
  resources :characters
  get '/characters/by_race/:race_id' => 'characters#by_race'
  resources :sub_class_jobs
  resources :class_jobs
  resources :backgrounds
  resources :sub_races
  resources :races
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
