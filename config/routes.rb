Padproof::Application.routes.draw do
  root :to => 'accounts#index'

  match '/accounts/sign-up', :to => 'accounts#early_sign_up'
end
