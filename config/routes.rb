Rails.application.routes.draw do
  root 'pins#index'
  devise_for :users

  resources :pins do
    member do
      put 'like', to: 'pins#upvote'
      put 'unlike', to: 'pins#downvote'
    end
  end
end
