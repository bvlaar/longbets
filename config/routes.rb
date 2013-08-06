Longbets::Application.routes.draw do
  resources :bets

  root :to => 'bets#new'

end
