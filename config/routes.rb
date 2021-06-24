Rails.application.routes.draw do
  resources :diaries
  get "/" => "home#top"
end
