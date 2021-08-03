Rails.application.routes.draw do

  root to: "home#top"
  resources :diaries
  post 'create_contact' => "home#create_contact"
end
