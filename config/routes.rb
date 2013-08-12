Longbets::Application.routes.draw do

  resources :bets

  root :to => 'bets#new'

  devise_for :admins, :path => '', :path_names => { :sign_in => "login" }

end
